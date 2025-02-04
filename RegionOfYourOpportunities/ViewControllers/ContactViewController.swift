//
//  ContactViewController.swift
//  RegionOfYourOpportunities
//
//  Created by Владислав Якунин on 30.01.2025.
//

import UIKit

final class ContactViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var adressLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var pressEmailLabel: UILabel!
    @IBOutlet var workingHoursLabel: UILabel!
    
    // MARK: - Private propeties
    private var contacts = Contacts.getContacts()

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        adressLabel.text = contacts.adress
        phoneLabel.text = contacts.phone
        emailLabel.text = contacts.email
        pressEmailLabel.text = contacts.pressEmail
        workingHoursLabel.text = contacts.workingHours
    }
}
