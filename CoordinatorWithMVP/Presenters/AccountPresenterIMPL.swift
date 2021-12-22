//
//  AccountPresenterIMPL.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import Foundation

final class AccountPresenterIMPL: AccountPresenter {
	
	unowned let view: AccountView
	let coordinator: AccountCoordinator
	
	required init(view: AccountView, coordinator: AccountCoordinator) {
		self.view = view
		self.coordinator = coordinator
	}
	
	func deletePerson() {
		PersonStorage.removePerson()
		coordinator.updateToRegistrationScene()
	}
}
