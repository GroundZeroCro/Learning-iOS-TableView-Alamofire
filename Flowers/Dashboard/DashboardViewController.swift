import Foundation
import UIKit

class DashboardViewController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setTabBarStyle()
    }

    private func setTabBarStyle() {
        tabBar.barTintColor = .white
        tabBar.tintColor = .gray
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), ], for: .normal)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let controllerFlower = FlowersViewController()
        let iconControllerFlowers = UITabBarItem(title: Constants.flowersNavigationTitle, image: UIImage(named: "flower"), selectedImage: UIImage(named: "flower"))
        controllerFlower.tabBarItem = iconControllerFlowers
        viewControllers = [controllerFlower]
        setNavigationStyle()
    }

    private func setNavigationStyle() {
        self.navigationItem.title = Constants.flowersNavigationTitle
        self.navigationController?.navigationBar.barTintColor = Colors.tile
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}

