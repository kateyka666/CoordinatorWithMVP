//
//  FactoryImpl.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 22.12.2021.
//

import UIKit

final class FactoryImpl: Factory {
	
	static func makeRegistrationVC(navigationController: UINavigationController) -> RegistrationVC {
		let viewController = RegistrationVC()
		let coordinator = RegistrationCoordinatorIMPL(navigationController: navigationController)
		let presenter = RegistrationPresenterImpl(view: viewController, coordinator: coordinator)
		viewController.presenter = presenter
		return viewController
		
	}
	
	static func makeAccountVC(navigationController: UINavigationController) -> AccountVC {
		let viewController = AccountVC()
		let coordinator = AccountCoordinatorIMPL(navigationController: navigationController)
		let presenter = AccountPresenterImpl(view: viewController, coordinator: coordinator)
		viewController.presenter = presenter
		return viewController
	}
	
}
