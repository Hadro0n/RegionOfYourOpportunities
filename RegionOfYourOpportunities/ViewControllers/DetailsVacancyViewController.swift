//
//  DetailsVacancyViewController.swift
//  RegionOfYourOpportunities
//
//  Created by Владислав Якунин on 30.01.2025.
//

import UIKit

final class DetailsVacancyViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var organizationLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var cashLabel: UILabel!
    
    // MARK: - Public properties
    var vacancy: Vacancy!

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        organizationLabel.text = vacancy.organization
        titleLabel.text = vacancy.title
        cashLabel.text = vacancy.cash
    }    
}
