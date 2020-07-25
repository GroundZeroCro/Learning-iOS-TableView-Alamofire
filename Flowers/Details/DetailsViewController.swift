import Foundation
import UIKit

class DetailsViewController: UIViewController {

    var flower: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        setRootBackgroundColor()
        setNavigationTitle(navigationTitle: flower!)
    }

    private func setRootBackgroundColor() {
        view.backgroundColor = .lightGray
    }

    private func onBackButtonClick() {
        self.dismiss(animated: true, completion: nil)
    }

    private func setNavigationTitle(navigationTitle: String) {
        self.navigationItem.title = navigationTitle
        self.navigationController?.navigationBar.barTintColor = Colors.tile
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = .white
    }
}