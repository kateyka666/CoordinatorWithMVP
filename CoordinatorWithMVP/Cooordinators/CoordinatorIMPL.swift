//
//  CoordinatorIMPL.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import UIKit

class CoordinatorIMPL: Coordinator {
	var navigationController: UINavigationController
	
	init(controller: UINavigationController) {
		self.navigationController = controller
	}
	
	func start() {
		
		let valueForStatePerson = PersonStorage.namePerson()
		
		if valueForStatePerson == nil {
			let vc = FactoryIMPL.makeRegistrationVC()
			navigationController.pushViewController(vc, animated: true)
		} else {
			let vc = FactoryIMPL.makeAccountVC()
			navigationController.pushViewController(vc, animated: true)
		}
	}
}


