//
//  AccountPresenterImpl.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import UIKit

final class AccountPresenterImpl: AccountPresenter {
	
	unowned let view: AccountView
	let coordinator: AccountCoordinator
	
	required init(view: AccountView, coordinator: AccountCoordinator) {
		self.view = view
		self.coordinator = coordinator
	}
	
	func deletePerson() {
		PersonStorage.shared.removePerson()
		coordinator.updateToRegistrationScene()
	}
	
	func callPhone() {
		guard let phone = PersonStorage.shared.phonePerson() else { return }
		guard let phoneCallURL = URL(string: "tel:\(phone)") else { return }
		coordinator.callToPhone(phoneCallURL: phoneCallURL)
	}
}

