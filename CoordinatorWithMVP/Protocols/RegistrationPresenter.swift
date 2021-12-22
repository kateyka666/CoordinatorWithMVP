//
//  RegistrationPresenter.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import Foundation

protocol RegistrationPresenter {
	
	init(view: RegistrationView, coordinator: RegistrationCoordinator)
	
	func saveNewPerson(person: Person)
}
