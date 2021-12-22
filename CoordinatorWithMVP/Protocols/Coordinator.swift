//
//  Coordinator.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 20.12.2021.
//

import UIKit

protocol Coordinator {
	var navigationController: UINavigationController {get set}
	func start()
}
