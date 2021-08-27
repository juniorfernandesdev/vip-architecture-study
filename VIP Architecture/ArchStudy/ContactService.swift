//
//  ContactService.swift
//  VIP Architecture
//
//  Created by Waldison Junior on 26/08/21.
//

import Foundation

protocol ContactServicing {
    func fetchContact(completion: @escaping (Result<[Contact], Error>) -> Void)
}

//no VIP a camada de service faz parto do WORK, onde, pode ter varios WORKS diferentes.
final class ContactService: ContactServicing {
    func fetchContact(completion: @escaping (Result<[Contact], Error>) -> Void) {
        //chama endpoint
        //fornece o retorno
        
        //faz a requisição
        completion(.success([Contact]()))
    }
}

struct Contact {
    let name: String
}
