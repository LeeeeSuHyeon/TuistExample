//
//  AppDelegate.swift
//  App
//
//  Created by 이수현 on 8/7/25.
//

import UIKit
import Home
import Utils

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = HomeViewController()
        print(Utils.sayHi())
        window?.rootViewController = UINavigationController(rootViewController: vc)
        window?.makeKeyAndVisible()
        return true
    }
}
