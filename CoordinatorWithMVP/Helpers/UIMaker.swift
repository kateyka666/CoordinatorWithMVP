//
//  TextFieldMaker.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 22.12.2021.
//


import UIKit

final class UIMaker {
	
	private init() {}
	
	static func makeLabel(originY: CGFloat, text: String) -> UILabel {
		let label = UILabel(frame: CGRect(x: UIScreen.main.bounds.minX + 25, y: originY, width: 200, height: 50))
		label.text = text
		label.textAlignment = .left
		label.font = .boldSystemFont(ofSize: 20)
		label.textColor = .black
		
		return label
	}
	
	static func makeTextField(originY: CGFloat, placeholder: String) -> UITextField {
		
		let textField = UITextField(frame: CGRect(x: UIScreen.main.bounds.minX + 30, y: originY, width: 300, height: 50))
		textField.backgroundColor = .white
		textField.placeholder = placeholder
		textField.borderStyle = .roundedRect
		textField.font = .boldSystemFont(ofSize: 20)
		textField.keyboardType = .alphabet
		textField.textAlignment = .left
		textField.autocorrectionType = .no
	
		return textField
	}
	
	static func makeButton(originY: CGFloat, title: String) -> UIButton {
		let button = UIButton(frame: CGRect(x: UIScreen.main.bounds.midX - 25, y: originY, width: 100, height: 50))
		button.setTitle(title, for: .normal)
		button.backgroundColor = .white
		button.setTitleColor(.black, for: .normal)

		return button
	}
	
}
