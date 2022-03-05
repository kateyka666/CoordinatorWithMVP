//
//  AccountCoordinator.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 22.12.2021.
//

import UIKit

class AccountCoordinatorIMPL: AccountCoordinator {

	private let navigationController: UINavigationController
	
	required init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func updateToRegistrationScene() {
		let vc = FactoryImpl.makeRegistrationVC(navigationController: navigationController)
		navigationController.pushViewController(vc, animated: true)
	}
	
	func callToPhone(phoneCallURL: URL) {
		if UIApplication.shared.canOpenURL(phoneCallURL)  {
			UIApplication.shared.open(phoneCallURL, options: [:], completionHandler: nil)
		}
	}
}
