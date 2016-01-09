import Foundation
import UIKit

class ScreenNavigator: NSObject {

    static let sharedInstance = ScreenNavigator()
    
    private var mainViewController: MainViewController?
    private var mainNavigationController: UINavigationController?
    
    
    func setupNavigator() {
        setupMainViewController()
    }
    
    private func setupMainViewController() {
        self.mainViewController = MainViewController()
        self.mainNavigationController = UINavigationController(rootViewController: self.mainViewController!)
    }

    func rootNavigationController() -> UINavigationController? {
        return self.mainNavigationController
    }
    
}