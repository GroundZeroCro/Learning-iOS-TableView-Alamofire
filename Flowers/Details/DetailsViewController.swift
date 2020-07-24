import Foundation
import UIKit

class DetailsViewController: BaseViewController {

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
}