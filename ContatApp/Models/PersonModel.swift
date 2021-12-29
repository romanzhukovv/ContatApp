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
}

extension Person: Equatable {
    static func ==(lhs: Person, rhs: Person) -> Bool {
        lhs.name == rhs.name || lhs.surname == rhs.surname || lhs.email == rhs.email || lhs.phone == rhs.phone
    }
    
    static func getUniqPersons(persons: Int) -> [Person] {
        let names = DataManager.shared.names
        let surnames = DataManager.shared.surnames
        let emails = DataManager.shared.emails
        let phones = DataManager.shared.phones
        
        var uniqPersons: [Person] = []
        
        while uniqPersons.count < persons {
            var nonUniqPersons = false
            
            let currentPerson = Person(name: names.randomElement() ?? "",
                                       surname: surnames.randomElement() ?? "",
                                       email: emails.randomElement() ?? "",
                                       phone: phones.randomElement() ?? "")

            for person in uniqPersons {
                if person == currentPerson {
                    nonUniqPersons = true
                }
            }
            
            if nonUniqPersons == true {
                continue
            }

            uniqPersons.append(currentPerson)
        }
        return uniqPersons
    }
}
