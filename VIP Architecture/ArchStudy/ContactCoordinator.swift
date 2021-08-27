//
//  ContactCoordinator.swift
//  VIP Architecture
//
//  Created by Waldison Junior on 26/08/21.
//

import Foundation
import UIKit

enum ContactAction {
    case openForm
    case closeFlow
}

protocol ContactCoordinating: AnyObject {
    func perform(action: ContactAction)
    var viewController: UIViewController? { get set }
}

final class ContactCoordinator {
    weak var viewController: UIViewController?
}

extension ContactCoordinator: ContactCoordinating {
    func perform(action: ContactAction) {
        switch action {
        case .openForm:
            viewController?.navigationController?.pushViewController(ViewController(), animated: true)
        case.closeFlow:
            viewController?.dismiss(animated: true)
        }
    }
}
