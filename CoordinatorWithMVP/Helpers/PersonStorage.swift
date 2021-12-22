//
//  PersonStorage.swift
//  CoordinatorWithMVP
//
//  Created by Екатерина Боровкова on 21.12.2021.
//

import Foundation

class PersonStorage {
	
	private init() {}
	
	static func addNewPerson(person: Person) {
		let data = try? JSONEncoder().encode(person)
		guard let data = data else { return }
		UserDefaults.standard.set(data, forKey: "person")
	}
	
	static func removePerson() {
		UserDefaults.standard.removeObject(forKey: "person")
	}
	
	static func namePerson() -> String? {
		guard let decoded = UserDefaults.standard.object(forKey: "person") as? Data else { return nil }
		guard let person = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(decoded) as? Person else { return nil }
		return person.name
	}
	
	static func surnamePerson() -> String? {
		guard let decoded = UserDefaults.standard.object(forKey: "person") as? Data else { return nil }
		guard let person = try? JSONDecoder().decode(Person.self, from: decoded) else { return nil }
		return person.surname
	}
	
}
