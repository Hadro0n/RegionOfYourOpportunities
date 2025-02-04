//
//  SupportMeasureListViewController.swift
//  RegionOfYourOpportunities
//
//  Created by Владислав Якунин on 30.01.2025.
//

import UIKit

final class PropertySupportTableViewController: UITableViewController {
    
    // MARK: - Private properties
    private var measure = Measure.getListProperySupport()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        measure.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "propertySupportCell", for: indexPath)
        let measure = measure[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = measure.title
        content.secondaryText = measure.group
        
        cell.contentConfiguration = content
        return cell
    }
}
    
    // MARK: - UITableViewDelegate
extension PropertySupportTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

