//
//  RegistrationVC.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 20.12.2021.
//

import UIKit

final class RegistrationVC: UIViewController {

	private lazy var newAccountLabel: UILabel = {
		UIMaker.shared.makeLabel(originY: 70, text: "New Account")
	}()
	private lazy var nameTextField: UITextField = {
		UIMaker.shared.makeTextField(originY: 120, placeholder: "name")
	}()
	private lazy var phoneTextField: UITextField = {
		UIMaker.shared.makeTextField(originY: 200, placeholder: "phone")
	}()
	private lazy var createButton: UIButton = {
		UIMaker.shared.makeButton(originY: 270, title: "Sign in", color: .white)
	}()
	
	var presenter: RegistrationPresenterImpl?

	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
	}
//MARK: to do
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesBegan(touches, with: event)
		view.endEditing(true)
	}
	
}

extension RegistrationVC:  RegistrationView{
	
	func setupUI() {
		view.backgroundColor = .cyan
	
		[newAccountLabel, nameTextField, phoneTextField, createButton].forEach { view.addSubview($0)}
		
		createButton.addTarget(self, action: #selector(addNewPerson), for: .touchUpInside)
	}

	@objc func addNewPerson() {
		guard let name = nameTextField.text, name != "" else { return }
		guard let phone = phoneTextField.text, phone != "" else { return }
		let phoneToSave = phone.replacingOccurrences(of: " ", with: "")

		let personToSave = Person(name: name, phone: phoneToSave)
		
		presenter?.saveNewPerson(person: personToSave)
		
		nameTextField.text = nil
		phoneTextField.text = nil
	}
	
	
}
