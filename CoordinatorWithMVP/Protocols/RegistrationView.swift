//
//  RegistrationView.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import Foundation

@objc protocol RegistrationView: AnyObject {
	func setupUI()
	@objc func addNewPerson()
}
