//
//  AboutUsTableViewController.swift
//  RegionOfYourOpportunities
//
//  Created by Владислав Якунин on 30.01.2025.
//

import UIKit

final class AboutUsTableViewController: UITableViewController {
        
    // MARK: - Private properties
    private var developers = Developers.getDevelopers()
       
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
        
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsAboutUsVC = segue.destination as? DetailsAboutUsViewController
        detailsAboutUsVC?.developers = developers[indexPath.row]
    }


    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        developers.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aboutUsCell", for: indexPath)
        let person = developers[indexPath.row]
            
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        content.secondaryText = person.status
        content.image = UIImage(named: person.fullName)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
            
        cell.contentConfiguration = content
        return cell
    }
}
