//
//  AccountCoordinator.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 22.12.2021.
//

import UIKit

class AccountCoordinatorIMPL: AccountCoordinator {

	private let navigationController: UINavigationController
	
	required init(navigationController: UINavigationController = UINavigationController()) {
		self.navigationController = navigationController
	}
	
	func updateToRegistrationScene() {
		let vc = FactoryIMPL.makeRegistrationVC()
		navigationController.pushViewController(vc, animated: true)
	}
}
