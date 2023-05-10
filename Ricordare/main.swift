//
//  main.swift
//  Ricordare
//
//  Created by Ana Raiany Guimarães Gomes on 15/03/22.
//
import Foundation

// Definindo a estrutura para o Medicamento
struct Medicamento {
    var nome: String
    var dataValidade: Date
}

// Criando a função para adicionar um novo medicamento
func adicionarMedicamento() -> Medicamento {
    print("Informe o nome do medicamento:")
    let nome = readLine() ?? ""
    
    print("Informe a data de validade no formato dd/MM/yyyy:")
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd/MM/yyyy"
    let dataValidadeString = readLine() ?? ""
    let dataValidade = dateFormatter.date(from: dataValidadeString) ?? Date()
    
    return Medicamento(nome: nome, dataValidade: dataValidade)
}

// Criando a função para calcular o número de dias entre duas datas
func diasEntreDatas(data1: Date, data2: Date) -> Int {
    let calendar = Calendar.current
    let components = calendar.dateComponents([.day], from: data1, to: data2)
    return components.day ?? 0
}

// Criando a lista vazia de medicamentos
var medicamentos: [Medicamento] = []

// Adicionando medicamentos à lista
medicamentos.append(adicionarMedicamento())
medicamentos.append(adicionarMedicamento())

// Definindo a data atual
let dataAtual = Date()

// Verificando se há medicamentos perto de vencer
for medicamento in medicamentos {
    let diasRestantes = diasEntreDatas(data1: dataAtual, data2: medicamento.dataValidade)
    if diasRestantes < 7 {
        print("O medicamento \(medicamento.nome) está perto de vencer. Restam \(diasRestantes) dias.")
    }
}
