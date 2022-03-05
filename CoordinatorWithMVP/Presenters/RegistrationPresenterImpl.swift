//
//  RegistrationPresenterImpl.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import Foundation

final class RegistrationPresenterImpl: RegistrationPresenter {
	
	unowned let view: RegistrationView
	private let coordinator: RegistrationCoordinator
	
	required init(view: RegistrationView, coordinator: RegistrationCoordinator) {
		self.view = view
		self.coordinator = coordinator
	}
	
	func saveNewPerson(person: Person) {
		
		PersonStorage.shared.addNewPerson(person: person)
		coordinator.updateToAccountScene()
	}
	
	
}
