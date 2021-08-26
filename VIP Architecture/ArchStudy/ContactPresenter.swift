//
//  ContactPresenter.swift
//  VIP Architecture
//
//  Created by Waldison Junior on 26/08/21.
//

//responsavel por configurar e formatar e configurar a forma de apresentação dessas informação que vim da interactor, como exemplo: Formatar data, nomes e etc...

import Foundation

final class ContactPresenter {
    var viewController: ContactViewController?
    private let coordinator: ContactCoordinator
    
    init(coordinator: ContactCoordinator) {
        self.coordinator = coordinator
    }
}
