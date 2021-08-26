import Foundation
import UIKit

final class ContactViewController: UIViewController {
    // Quem for iniciar a view controller tem que passar o interactor.
    // Dentro da viewcontroller nao pode ter logica dentro dela
    private let interactor: ContactInteractor
    
    init(interactor: ContactInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor.fetchContact()
    }
}
