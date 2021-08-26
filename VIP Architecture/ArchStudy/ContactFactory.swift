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
        let service = ContactService()
        let coordinator = ContactCoordinator()
        let presenter = ContactPresenter(coordinator: coordinator)
        let interactor = ContactInteractor(service: service, presenter: presenter)
        let viewController = ContactViewController(interactor: interactor)
        
        presenter.viewController = viewController
        coordinator.viewController = viewController
        
        return viewController
    }
}
