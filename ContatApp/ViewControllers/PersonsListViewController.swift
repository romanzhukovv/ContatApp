//
//  PersonsListViewController.swift
//  ContatApp
//
//  Created by Roman Zhukov on 28.12.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var uniquePersons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        uniquePersons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        let person = uniquePersons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let person = uniquePersons[indexPath.row]
        
        detailsVC.person = person
    }
}
