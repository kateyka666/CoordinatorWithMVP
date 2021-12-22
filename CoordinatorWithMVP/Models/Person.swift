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
	var surname: String
	
	init(name: String, surname: String) {
		self.name = name
		self.surname = surname
	}
	
	
}
