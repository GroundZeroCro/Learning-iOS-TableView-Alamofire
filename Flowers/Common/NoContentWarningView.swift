import Foundation
import UIKit

class NoContentWarningView: UIImageView {

    func initializeView(view: UIView) {
        let image = UIImage(named: "NoContentIcon")
        contentMode = UIView.ContentMode.scaleAspectFit
        frame.size.width = 130
        frame.size.height = 130
        self.image = image
        center = view.center
        isHidden = true
    }

    func changeVisibility(isVisible: Bool) {
        self.isHidden = !isVisible
    }
}