import Foundation
import UIKit

class MyNavigationBar: UINavigationBar {

    private var title: String = ""

    init(title: String) {
        super.init(frame: CGRect(x: 0, y: 0, width: DeviceUtils.screenWidth, height: 100))
        self.title = title

        backgroundColor = Colors.tile
        largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        prefersLargeTitles = true
        layoutMargins = UIEdgeInsets(top: 0, left: Dimensions.normalPadding, bottom: 0, right: -25)

        let navigationItem = UINavigationItem(title: self.title)
        setItems([navigationItem], animated: false)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
