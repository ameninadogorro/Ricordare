//
//  perguntas.swift
//  Ricordare
//
//  Created by Ana Raiany Guimarães Gomes on 17/03/22.
//

import Foundation

func start() {
    print("Qual remedio você está procurando?")
    var texto = readLine() //recebeu uma string
    var numero = Double(texto!)
    print(texto)
    print(numero ?? 6)
}

