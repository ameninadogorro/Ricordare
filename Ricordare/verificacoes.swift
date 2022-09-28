//
//  perguntas.swift
//  Ricordare
//
//  Created by Ana Raiany Guimarães Gomes on 17/03/22.
//

import Foundation

func comprimenta(nome: String) {
    print("\nOlá, \(nome)! Tudo bem? Bora colorir teu dia? 🌈\n")
}

func testaNome() {
    print("Digite seu nome: ")
    var remedioNome = coletaNomeRemedio()
    
    while nomeValido(nome: remedioNome) == false {
        print("Digite um nome válido: ")
        remedioNome = coletaNomeRemedio()
    }
}
// Veja se o que foi digitado é algo nulo ou tb é nada
func nomeValido (nome: String?) -> Bool {
    if nome != nil && nome != "" {
        return true
    }
    return false
}
