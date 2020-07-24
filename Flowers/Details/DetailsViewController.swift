import Foundation
import UIKit

class DetailsViewController: UIViewController {

    var flower: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        setRootBackgroundColor()
    }

    private func setRootBackgroundColor() {
        view.backgroundColor = .lightGray
    }

    private func onBackButtonClick() {
        self.dismiss(animated: true, completion: nil)
    }
}