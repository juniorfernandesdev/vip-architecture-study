//
//  ContactPresenter.swift
//  VIP Architecture
//
//  Created by Waldison Junior on 26/08/21.
//

//responsavel por configurar e formatar e configurar a forma de apresentação dessas informação que vim da interactor, como exemplo: Formatar data, nomes e etc...

import Foundation

protocol ContactPresenting: AnyObject {
    var viewController: ContactDisplaing? { get set }
}

final class ContactPresenter {
    weak var viewController: ContactDisplaing?
    private let coordinator: ContactCoordinating
    
    init(coordinator: ContactCoordinating) {
        self.coordinator = coordinator
    }
}

extension ContactPresenter: ContactPresenting {
    
}
