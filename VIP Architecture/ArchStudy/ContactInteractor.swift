//
//  ContactInteractor.swift
//  VIP Architecture
//
//  Created by Waldison Junior on 26/08/21.
//

import Foundation

protocol ContactInteracting: AnyObject {
    func fetchContact()
}

final class ContactInteractor {
    // principal camada dentro da arquitetura VIP
    private let service: ContactServicing
    private let presenter: ContactPresenting
    
    init(service: ContactServicing, presenter: ContactPresenting) {
        self.service = service
        self.presenter = presenter
    }
}

extension ContactInteractor: ContactInteracting {
    func fetchContact() {
        print("request API")
    }
}
