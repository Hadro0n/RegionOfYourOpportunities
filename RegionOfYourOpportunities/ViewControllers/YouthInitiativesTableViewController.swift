//
//  YouthInitiatives(TableViewController.swift
//  RegionOfYourOpportunities
//
//  Created by Владислав Якунин on 03.02.2025.
//

import UIKit

final class YouthInitiativesTableViewController: UITableViewController {
    
    // MARK: - Private properties
    private var measure = Measure.getListSupportYouthInitiatives()
        
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        measure.count
    }
            
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "youthInitiativesCell", for: indexPath)
        let measure = measure[indexPath.row]
            
        var content = cell.defaultContentConfiguration()
        content.text = measure.title
        content.secondaryText = measure.group
                
        cell.contentConfiguration = content
        return cell
    }
}
    
    // MARK: - UITableViewDelegate
extension YouthInitiativesTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
