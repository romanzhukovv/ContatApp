//
//  PersonModel.swift
//  ContatApp
//
//  Created by Roman Zhukov on 28.12.2021.
//

struct Person {
    var name: String
    var surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var email: String
    var phone: String
    
    static func getPersons() -> [Person] {
        [
            Person(name: DataManager.shared.names.randomElement() ?? "",
                   surname: DataManager.shared.surnames.randomElement() ?? "",
                   email: DataManager.shared.emails.randomElement() ?? "",
                   phone: DataManager.shared.phones.randomElement() ?? "")
        ]
    }
}

extension Person {
    private func getRandomPersons(persons: Int) -> [Person] {
        
        var names = DataManager.shared.names.shuffled()
        var surnames = DataManager.shared.surnames.shuffled()
        var emails = DataManager.shared.emails.shuffled()
        var phones = DataManager.shared.phones.shuffled()
        
        var currentPerson = Person(name: "", surname: "", email: "", phone: "")
        var randomPersons: [Person] = []
        
        for person in (1...persons) {
            for name in names {
                currentPerson.name = name
            }
        }
        
        return randomPersons
    }
}
