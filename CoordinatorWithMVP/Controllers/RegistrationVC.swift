//
//  RegistrationVC.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 20.12.2021.
//

import UIKit

final class RegistrationVC: UIViewController {

	private lazy var newAccountLabel: UILabel = {
		UIMaker.makeLabel(originY: 70, text: "New Account")
	}()
	private lazy var nameTextField: UITextField = {
		UIMaker.makeTextField(originY: 120, placeholder: "name")
	}()
	private lazy var surnameTextField: UITextField = {
		UIMaker.makeTextField(originY: 200, placeholder: "surname")
	}()
	private lazy var createButton: UIButton = {
		UIMaker.makeButton(originY: 270, title: "Sign in")
	}()
	
	var presenter: RegistrationPresenterIMPL!

	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
	}

	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesBegan(touches, with: event)
		view.endEditing(true)
	}
	
}

extension RegistrationVC:  RegistrationView{
	
	func setupUI() {
		view.backgroundColor = .cyan
	
		[newAccountLabel, nameTextField, surnameTextField, createButton].forEach { view.addSubview($0)}
		
		createButton.addTarget(self, action: #selector(addNewPerson), for: .touchUpInside)
	}

	@objc func addNewPerson() {
		guard let name = nameTextField.text else { return }
		guard let surname = surnameTextField.text else { return }
		
		let personToSave = Person(name: name, surname: surname)
		
		presenter.saveNewPerson(person: personToSave)
		
		nameTextField.text = nil
		surnameTextField.text = nil
	}
	
	
}
