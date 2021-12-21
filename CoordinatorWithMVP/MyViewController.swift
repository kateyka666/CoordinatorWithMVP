//
//  ViewController.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 20.12.2021.
//

import UIKit

class MyViewController: UIViewController {
	
	weak var coordinator: CoordinatorIMPL?

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .red
	}


}

