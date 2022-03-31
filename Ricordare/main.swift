//
//  main.swift
//  Ricordare
//
//  Created by Ana Raiany Guimarães Gomes on 15/03/22.
//
import Foundation//isso aqui é uma biblioteca, meio que eu importei ela


// Pelo console
// 1. pedir o nome do remedio
// 2. criar um remedio com esse nome que foi digitado
// 3. printar o remedio que você criou no passo 2

var remedio: Remedio = Remedio(id: 1, nome: "NOME: Donapezila", dosagem: "DOSAGEM: 1 comprimido de 5 mg", vencimento: " VENCIMENTO: 17/07/2023")
print(remedio)


let remedio1:Remedio = Remedio(id: 1, nome: "NOME: Donapezila", dosagem: "DOSAGEM: 1 comprimido de 5 mg", vencimento: " VENCIMENTO: 17/07/2023") // aqui é o meu construidor

print("""
      
      |-------------------------------REMEDIO 1: Donapezila---------------------------------------------|
      |-------------------------------------------------------------------------------------------------|
      |Os dados do remedio são:💊\(remedio1.nome),\(remedio1.dosagem),\(remedio1.vencimento),\(remedio1.alerta)|
      |-------------------------------------------------------------------------------------------------|
      """
)


let remedio2: Remedio = Remedio(id: 2, nome: "NOME: Gantamina", dosagem: " DOSAGEM: 2 comprimido de 8 mg", vencimento: " VENCIMENTO: 28/09/2024", alerta: "")

print("""

    |------------------------------------REMEDIO 2: Gantamina---------------------------------------------|
    |-----------------------------------------------------------------------------------------------------|
    |Os dados do remedio sao: 💊\(remedio2.nome),\(remedio2.dosagem), \(remedio2.vencimento),\(remedio2.alerta)  |
    |-----------------------------------------------------------------------------------------------------|

""")

let remedio3: Remedio = Remedio(id: 3, nome: "NOME: Memantina", dosagem: " DOSAGEM: 3 gotas", vencimento: " VENCIMENTO: 25/05/2022", alerta: "")
print("""
       |-------------------------------REMEDIO 3: MEMANTINA---------------------------------------------|
       |------------------------------------------------------------------------------------------------|
       |    "Os dados do remedio sao:💊 \(remedio3.nome),\(remedio3.dosagem),\(remedio3.vencimento)       |
       |------------------------------------------------------------------------------------------------|

""")

let remedio4: Remedio = Remedio(id: 4, nome: "NOME: Ansiolitícos", dosagem: " DOSAGEM: 1 comprimido por semana", vencimento: " VENCIMENTO: 20/08/2024", alerta: " ALERTA: NUNCA TOMAR EM EXCESSO!")
print("""

    |---------------------------------REMEDIO 4: Ansiolitícos---------------------------------------------|
    |-----------------------------------------------------------------------------------------------------|
    |Os dados do remedio sao:💊 \(remedio4.nome),\(remedio4.dosagem),\(remedio4.vencimento),
                               ⚠️  \(remedio4.alerta) ⚠️
    |-----------------------------------------------------------------------------------------------------|

""")

let remedios = [remedio1, remedio2, remedio3, remedio4] // Arrays. O que sao? Como manipular?
 
for remedio in remedios {
    print(remedio.nome)
} // primeiros codigos com a ajuda do Mateus, aprendi a fazer classes, variaveis e construdor


