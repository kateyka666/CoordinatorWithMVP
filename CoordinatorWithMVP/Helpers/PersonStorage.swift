//
//  PersonStorage.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import Foundation

class PersonStorage {
	
	static let shared = PersonStorage()
	
	private init() {}
	
	func addNewPerson(person: Person) {
		UserDefaults.standard.set(person.name, forKey: "name")
		UserDefaults.standard.set(person.phone, forKey: "phone")
		
	}
	
	func removePerson() {
		UserDefaults.standard.removeObject(forKey: "name")
		UserDefaults.standard.removeObject(forKey: "phone")
	}
	
    func namePerson() -> String? {
		guard let name = UserDefaults.standard.value(forKey: "name") as? String else { return nil }
		return name
	}
	
	 func phonePerson() -> String? {
		guard let phone = UserDefaults.standard.value(forKey: "phone") as? String else { return nil }
		return phone
	}
	
}

