import Foundation
import UIKit

class NoContentWarningView: UIImageView {

    func initializeView(view: UIView) {
        let image = UIImage(named: "NoContentIcon")
        self.contentMode = UIView.ContentMode.scaleAspectFit
        self.frame.size.width = 130
        self.frame.size.height = 130
        self.image = image
        self.center = view.center
        self.isHidden = true
    }

    func changeVisibility(isVisible: Bool) {
        self.isHidden = !isVisible
    }
}