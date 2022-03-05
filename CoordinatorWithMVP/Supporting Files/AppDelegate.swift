//
//  AppDelegate.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 20.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	var coordinator: CoordinatorImpl?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

		let navigationController = UINavigationController()
		let coordinator = CoordinatorImpl(controller: navigationController)
		coordinator.start()

		window = UIWindow(frame: UIScreen.main.bounds)
		window?.rootViewController = navigationController
		window?.makeKeyAndVisible()

		return true
	}

	// MARK: UISceneSession Lifecycle

	

}


