//
//  FactoryIMPL.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 22.12.2021.
//

import Foundation

final class FactoryIMPL: Factory {
	
	static func makeRegistrationVC() -> RegistrationVC {
		let viewController = RegistrationVC()
		let coordinator = RegistrationCoordinatorIMPL()
		let presenter = RegistrationPresenterIMPL(view: viewController, coordinator: coordinator)
		viewController.presenter = presenter
		return viewController
		
	}
	
	static func makeAccountVC() -> AccountVC {
		let viewController = AccountVC()
		let coordinator = AccountCoordinatorIMPL()
		let presenter = AccountPresenterIMPL(view: viewController, coordinator: coordinator)
		viewController.presenter = presenter
		return viewController
	}
	
}
