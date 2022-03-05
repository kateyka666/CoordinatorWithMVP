//
//  CoordinatorImpl.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import UIKit

class CoordinatorImpl: Coordinator {
	var navigationController: UINavigationController
	
	init(controller: UINavigationController) {
		self.navigationController = controller
	}
	
	func start() {
		
		let valueForStatePerson = PersonStorage.shared.namePerson()
		if valueForStatePerson == nil {
			let vc1 = FactoryImpl.makeRegistrationVC(navigationController: navigationController)
			navigationController.pushViewController(vc1, animated: true)
		} else {
			let vc2 = FactoryImpl.makeAccountVC(navigationController: navigationController)
			navigationController.pushViewController(vc2, animated: true)
		}
	}
}


