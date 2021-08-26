//
//  ContactInteractor.swift
//  VIP Architecture
//
//  Created by Waldison Junior on 26/08/21.
//

import Foundation

final class ContactInteractor {
    // principal camada dentro da arquitetura VIP
    
    private let service: ContactService
    private let presenter: ContactPresenter
    
    init(service: ContactService, presenter: ContactPresenter) {
        self.service = service
        self.presenter = presenter
    }
    
    func fetchContact() {
        print("request API")
    }
}
