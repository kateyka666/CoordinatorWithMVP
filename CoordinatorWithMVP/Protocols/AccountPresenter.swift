//
//  AccountPresenter.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import Foundation

protocol AccountPresenter {
	
	init(view: AccountView, coordinator: AccountCoordinator)
	
	func deletePerson()
}
