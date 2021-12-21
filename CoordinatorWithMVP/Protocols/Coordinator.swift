//
//  Coordinator.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 20.12.2021.
//

import Foundation
import UIKit

protocol Coordinator {
	var navigationController: UINavigationController {get set}
	func start()
}
