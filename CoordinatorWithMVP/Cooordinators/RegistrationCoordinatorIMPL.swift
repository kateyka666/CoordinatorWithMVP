//
//  RegistrationCoordinator.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 22.12.2021.
//

import UIKit

class RegistrationCoordinatorIMPL: RegistrationCoordinator {

	private let navigationController: UINavigationController
	
	required init(navigationController: UINavigationController = UINavigationController()) {
		self.navigationController = navigationController
	}
	
	func updateToAccountScene() {
		let vc = FactoryIMPL.makeAccountVC()
		navigationController.pushViewController(vc, animated: true)
	}
}
