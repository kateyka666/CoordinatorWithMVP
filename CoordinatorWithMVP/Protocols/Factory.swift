//
//  Factory.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 22.12.2021.
//

import UIKit

protocol Factory {
	
	static func makeRegistrationVC(navigationController: UINavigationController) -> RegistrationVC
	
	static func makeAccountVC(navigationController: UINavigationController) -> AccountVC
	
}
