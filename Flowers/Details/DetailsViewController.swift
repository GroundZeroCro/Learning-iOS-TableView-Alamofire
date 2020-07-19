import Foundation
import UIKit

class DetailsViewController: UIViewController {

    var flower: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        if flower != nil {
            debugPrint("Loaded details screen with flower: " + flower!)
        }
    }
}