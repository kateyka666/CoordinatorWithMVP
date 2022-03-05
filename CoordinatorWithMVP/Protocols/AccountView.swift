//
//  AccountView.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import Foundation

@objc protocol AccountView: AnyObject  {
	func setupUI()
	@objc func exitFromAccount()
	@objc func callPhone() 
}
