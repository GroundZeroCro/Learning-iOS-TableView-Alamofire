import Foundation
import UIKit

class MyNavigationBar: UINavigationBar {

    private var title: String = ""

    init(smallTitle: String) {
        super.init(frame: CGRect(x: 0, y: 0, width: DeviceUtils.screenWidth, height: 0))
        prefersLargeTitles = false
        self.instantiateNavigationBar(smallTitle)
    }

    init(largeTitle: String) {
        super.init(frame: CGRect(x: 0, y: 0, width: DeviceUtils.screenWidth, height: 100))
        prefersLargeTitles = true
        self.instantiateNavigationBar(largeTitle)
    }

    private func instantiateNavigationBar(_ title: String) {
        self.title = title
        backgroundColor = Colors.tile
        largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        layoutMargins = UIEdgeInsets(top: 0, left: Dimensions.normalPadding, bottom: 0, right: -25)

        let navigationItem = UINavigationItem(title: self.title)
        setItems([navigationItem], animated: false)
    }


    private func navigationBarHeight(largeTitle: Bool) -> CGFloat {
        if (largeTitle) {
            return CGFloat(100)
        } else {
            return CGFloat(0)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
