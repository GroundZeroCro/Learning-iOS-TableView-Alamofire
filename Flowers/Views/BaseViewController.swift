import Foundation
import UIKit

class BaseViewController: UIViewController {

    func setNavigationTitle(navigationTitle: String) {
        self.navigationItem.title = navigationTitle
        self.navigationController?.navigationBar.barTintColor = Colors.tile
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = .white
    }
}