//
//  CoordinatorIMPL.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import Foundation
import UIKit

final class CoordinatorIMPL: Coordinator {
	
	var navigationController: UINavigationController
	
	init(controller: UINavigationController) {
		self.navigationController = controller
	}
	
	func start() {
//		let vc = MyViewController()
//		vc.coordinator = self
//		vc.view.backgroundColor = .yellow
//		navigationController.pushViewController(vc, animated: false)
		navigationController.view.backgroundColor = .green
	}
	
	
}


