//
//  Factory.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 22.12.2021.
//

import Foundation

protocol Factory {
	
	static func makeRegistrationVC() -> RegistrationVC
	
	static func makeAccountVC() -> AccountVC
	
}
