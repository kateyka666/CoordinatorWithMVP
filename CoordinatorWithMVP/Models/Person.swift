//
//  Person.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import Foundation
import UIKit

class Person: Codable{
	
	
	var name: String
	var phone: String
	
	init(name: String, phone: String) {
		self.name = name
		self.phone = phone
	}
	
	
}
