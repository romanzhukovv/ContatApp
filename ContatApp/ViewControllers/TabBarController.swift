//
//  TabBarController.swift
//  ContatApp
//
//  Created by Roman Zhukov on 28.12.2021.
//

import UIKit

class TabBarController: UITabBarController {
    let uniquePersons = Person.getUniquePersons(persons: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transitionData()
    }
}

extension TabBarController {
    private func transitionData() {
        guard let viewControllers = self.viewControllers else { return }
    
        for viewController in viewControllers {
            if let navigatinonVC = viewController as? UINavigationController {
                if let personsListVC = navigatinonVC.topViewController as? PersonsListViewController {
                    personsListVC.uniquePersons = uniquePersons
                } else if let contactsListVC = navigatinonVC.topViewController as? ContactsListViewController {
                    contactsListVC.uniquePersons = uniquePersons
                }
            }
        }
    }
}
