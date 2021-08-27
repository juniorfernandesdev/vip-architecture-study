//
//  ContactFactory.swift
//  VIP Architecture
//
//  Created by Waldison Junior on 26/08/21.
//

import Foundation
import UIKit

enum ContactFactory {
    static func make() -> UIViewController {
        let service: ContactServicing = ContactService()
        let coordinator: ContactCoordinating = ContactCoordinator()
        let presenter: ContactPresenting = ContactPresenter(coordinator: coordinator)
        let interactor: ContactInteracting = ContactInteractor(service: service, presenter: presenter)
        let viewController = ContactViewController(interactor: interactor)
        
        presenter.viewController = viewController
        coordinator.viewController = viewController
        
        return viewController
    }
}
