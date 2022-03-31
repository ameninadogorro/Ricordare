//
//  remedios.swift
//  Ricordare
//
//  Created by Ana Raiany Guimarães Gomes on 23/03/22.
//

import Foundation

extension Remedio {
    var description: String{
        
        if let alerta = self.alerta{
                  return  """
                          |-------------------------------REMEDIO \(self.id): \(self.nome)---------------------------------------------|
                          |-------------------------------------------------------------------------------------------------|
                          |Os dados do remedio são: NOME:💊\(self.nome),\(self.dosagem),\(self.vencimento),\(alerta)|
                          |-------------------------------------------------------------------------------------------------|
                          """
        }else{
                return   """
                                      |-------------------------------REMEDIO \(self.id): \(self.nome)---------------------------------------------|
                                      |-------------------------------------------------------------------------------------------------|
                                      |Os dados do remedio são: NOME:💊\(self.nome),\(self.dosagem),\(self.vencimento)|
                                      |-------------------------------------------------------------------------------------------------|
                                      """
        }
        
    }
}

class Remedio: CustomStringConvertible {
    //classe dos remedios
    var id: Int
    var nome: String
    var dosagem: String
    var vencimento: String
    var alerta: String?
    
    
    convenience init(id: Int, nome: String, dosagem: String, vencimento: String, alerta: String) {
        self.init(id: id, nome: nome, dosagem: dosagem, vencimento: vencimento)
        self.alerta = alerta

    }
    
    init(id: Int, nome: String, dosagem: String, vencimento: String) {
        self.id = id
        self.nome = nome
        self.dosagem = dosagem
        self.vencimento = vencimento
    }
    
    
    
}
