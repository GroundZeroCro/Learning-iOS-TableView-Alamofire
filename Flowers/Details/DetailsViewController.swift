import Foundation
import UIKit

class DetailsViewController: UIViewController {

    var flower: String? = nil
    // Views
    private var navigation: MyNavigationBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        setRootBackgroundColor()
        instantiateNavigationBar(view, title: flower!)
    }

    private func setRootBackgroundColor() {
        view.backgroundColor = .lightGray
    }

    private func instantiateNavigationBar(_ view: UIView, title: String) {
        navigation = MyNavigationBar(smallTitle: title)
        view.addSubview(navigation)
    }
}