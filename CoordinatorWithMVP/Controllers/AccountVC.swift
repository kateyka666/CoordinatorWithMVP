//
//  AccountVC.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import UIKit

final class AccountVC : UIViewController{
	
	var presenter: AccountPresenterImpl?
	
	private lazy var nameLabel: UILabel = {
		UIMaker.shared.makeLabel(originY: 70, text: PersonStorage.shared.namePerson() ?? "no name")
	}()
	private lazy var phoneButton: UIButton = {
		UIMaker.shared.makeButton(originY: 100, title: PersonStorage.shared.phonePerson() ?? "no phone", color: .clear)
	}()
	private lazy var signOutButton: UIButton = {
		UIMaker.shared.makeButton(originY: 150, title: "Sign out", color: .white)
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
	
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(true)
		setupUI()
	}
	
}

extension AccountVC: AccountView {
	
	func setupUI() {
		view.backgroundColor = .cyan
	
		[nameLabel, phoneButton, signOutButton].forEach { view.addSubview($0)}
		
		phoneButton.addTarget(self, action: #selector(callPhone), for: .touchUpInside)
		signOutButton.addTarget(self, action: #selector(exitFromAccount), for: .touchUpInside)
	}
	
	@objc func exitFromAccount() {
		presenter?.deletePerson()
	}
	
	@objc func callPhone() {
		presenter?.callPhone()
	}
}

struct Test {
	lazy var letter: String = {
	let letter = String()
		return letter
	} ()
}

class Test1 {
	lazy var letter: String = {
		let letter = String()
		return letter
	} ()
}
