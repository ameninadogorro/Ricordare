//
//  Remedios.swift
//  Ricordare
//
//  Created by Ana Raiany Guimarães Gomes on 2023-05-10.
//

import Foundation

import Kanna

struct Medicine: Codable {
    let name: String
    let expirationDate: Date
    let timeToConsume: String
}

func prompt<T>(_ message: String, transform: (String) -> T?) -> T {
    while true {
        print("\(message): ", terminator: "")
        if let input = readLine(), let value = transform(input) {
            return value
        }
        print("Invalid input, please try again.")
    }
}

func promptDate() -> Date {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    return prompt("Enter expiration date (dd/MM/yyyy)", transform: {
        formatter.date(from: $0)
    })
}

func promptMedicine() -> Medicine {
    return Medicine(
        name: prompt("Enter medicine name", transform: { $0 }),
        expirationDate: promptDate(),
        timeToConsume: prompt("Enter time to consume", transform: { $0 })
    )
}

func saveMedicines(_ medicines: [Medicine], to file: URL) throws {
    let encoder = JSONEncoder()
    encoder.dateEncodingStrategy = .iso8601
    let data = try encoder.encode(medicines)
    try data.write(to: file)
}

func loadMedicines(from file: URL) throws -> [Medicine] {
    let data = try Data(contentsOf: file)
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .iso8601
    return try decoder.decode([Medicine].self, from: data)
}

func showMedicine(_ medicine: Medicine) {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .none
    let daysUntilExpiration = Calendar.current.dateComponents([.day], from: Date(), to: medicine.expirationDate).day!
    let isExpired = daysUntilExpiration < 0
    let message = isExpired ? "Expired" : "\(daysUntilExpiration) days until expiration"
    print("\(medicine.name) - \(message) - Expires on \(formatter.string(from: medicine.expirationDate)) - Time to consume: \(medicine.timeToConsume)")
    if daysUntilExpiration <= 7 {
        print("ALERT: This medicine will expire soon!")
    }
}

func showMedicines(_ medicines: [Medicine]) {
    print("Medicines:")
    for medicine in medicines {
        showMedicine(medicine)
    }
}


