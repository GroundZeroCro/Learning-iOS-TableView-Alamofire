//
//  AppDelegate.swift
//  Flowers
//
//  Created by ground zero on 18/07/2020.
//  Copyright © 2020 ground zero. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        let flowersViewController = DashboardViewController()
        let navigationController = UINavigationController(rootViewController: flowersViewController)
        navigationController.navigationBar.isTranslucent = false
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()

        return true
    }


}

