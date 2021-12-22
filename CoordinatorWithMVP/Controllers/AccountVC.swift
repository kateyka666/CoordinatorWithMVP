//
//  AccountVC.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import UIKit

final class AccountVC : UIViewController{
	
	var presenter: AccountPresenterIMPL!
	
	private lazy var nameLabel: UILabel = {
		UIMaker.makeLabel(originY: 70, text: PersonStorage.namePerson() ?? "no name")
	}()
	private lazy var surnameLabel: UILabel = {
		UIMaker.makeLabel(originY: 100, text: "New Account")
	}()
	private lazy var signOutButton: UIButton = {
		UIMaker.makeButton(originY: 150, title: "Sign out")
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
	}
	
}

extension AccountVC: AccountView {
	
	func setupUI() {
		view.backgroundColor = .cyan
	
		[nameLabel, surnameLabel, signOutButton].forEach { view.addSubview($0)}
		
		signOutButton.addTarget(self, action: #selector(exitFromAccount), for: .touchUpInside)
	}
	
	@objc func exitFromAccount() {
		presenter.deletePerson()
	}
	
}
