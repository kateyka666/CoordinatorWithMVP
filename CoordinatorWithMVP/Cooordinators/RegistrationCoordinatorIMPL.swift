//
//  RegistrationCoordinator.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 22.12.2021.
//

import UIKit

class RegistrationCoordinatorIMPL: RegistrationCoordinator {

	private let navigationController: UINavigationController
	
	required init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func updateToAccountScene() {
		_ = FactoryImpl.makeAccountVC(navigationController: navigationController)
		navigationController.popViewController(animated: true)
	}
}
