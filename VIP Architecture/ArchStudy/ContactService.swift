//
//  ContactService.swift
//  VIP Architecture
//
//  Created by Waldison Junior on 26/08/21.
//

import Foundation

protocol ContactServicing {
    func fetchContact()
}

//no VIP a camada de service faz parto do WORK, onde, pode ter varios WORKS diferentes.
final class ContactService: ContactServicing {
    func fetchContact() {
        //chama endpoint
        //fornece o retorno
    }
}
