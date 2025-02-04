//
//  VacancyListViewController.swift
//  RegionOfYourOpportunities
//
//  Created by Владислав Якунин on 30.01.2025.
//

import UIKit

final class VacancyListViewController: UITableViewController {
    
    // MARK: - Private properties
    private var vacancyList = Vacancy.getListVacancy()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVacancyVC = segue.destination as? DetailsVacancyViewController
        detailsVacancyVC?.vacancy = vacancyList[indexPath.row]
    }
}

    // MARK: - UITableViewDataSource
    extension VacancyListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vacancyList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "vacancyCell", for: indexPath)
        let vacancy = vacancyList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = vacancy.title
        content.secondaryText = vacancy.location
        
        cell.contentConfiguration = content
        return cell
    }
}
