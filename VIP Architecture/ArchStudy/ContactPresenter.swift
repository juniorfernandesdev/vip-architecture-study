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
    func presentLoading(isLoading: Bool)
    func present(contact: [Contact])
    func presentError()
}

final class ContactPresenter {
    weak var viewController: ContactDisplaing?
    private let coordinator: ContactCoordinating
    
    init(coordinator: ContactCoordinating) {
        self.coordinator = coordinator
    }
}

extension ContactPresenter: ContactPresenting {
    func presentLoading(isLoading: Bool) {
        isLoading ? viewController?.displayHide() : viewController?.displayLoading()
    }
    
    func present(contact: [Contact]) {
        viewController?.display(contact: contact)
    }
    
    func presentError() {
        let errorViewController = ErrorViewController()
        coordinator.perform(action: .errorScreen(errorViewController: errorViewController))
    }
}
