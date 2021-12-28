//
//  DataManager.swift
//  ContatApp
//
//  Created by Roman Zhukov on 28.12.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Aaron", "Tim", "Ted",
        "Steven", "Sharon", "Nicola",
        "Allan", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennywoth",
        "Jankin", "Butler", "Black",
        "Robertson", "Murphy", "Williams"
    ]
    
    let emails = [
        "aaa@gmail.com", "bbb@gmail.com", "ccc@gmail.com", "ddd@gmail.com",
        "eee@gmail.com", "fff@gmail.com", "ggg@gmail.com",
        "hhh@gmail.com", "kkk@gmail.com", "zzz@gmail.com"
    ]
    
    let phones = [
        "111111", "222222", "333333", "444444",
        "555555", "666666", "777777",
        "888888", "999999", "000000"
    ]
    
    private init() {}
}
