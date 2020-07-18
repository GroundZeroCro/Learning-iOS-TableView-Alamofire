//
// Created by ground zero on 18/07/2020.
// Copyright (c) 2020 TrotterIndependent. All rights reserved.
//

import Foundation
import UIKit

class MyNavigationBar: UINavigationBar {

    private var title: String = ""

    init(title: String) {
        super.init(frame: CGRect(x: 0, y: 0, width: DeviceUtils.screenWidth, height: 90))
        self.title = title

        backgroundColor = Colors.tile
        largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        prefersLargeTitles = true

        let navigationItem = UINavigationItem(title: self.title)
        setItems([navigationItem], animated: false)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    @objc func selectorX() {
    }
}
