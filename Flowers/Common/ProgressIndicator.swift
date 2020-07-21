import Foundation
import UIKit

class ProgressIndicator: UIActivityIndicatorView {
    override init(style: Style) {
        super.init(style: style)
        frame = CGRect(x: 0, y: 0, width: 200, height: 200)
    }

    convenience init(view: UIView) {
        self.init(style: UIActivityIndicatorView.Style.large)
        center = view.center
        view.bringSubviewToFront(self)
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}