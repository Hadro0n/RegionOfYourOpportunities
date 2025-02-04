//
//  DetailsAboutUsViewController.swift
//  RegionOfYourOpportunities
//
//  Created by Владислав Якунин on 30.01.2025.
//

import UIKit

final class DetailsAboutUsViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var birthdayLabel: UILabel!
    @IBOutlet var bioTextView: UITextView!
    
    // MARK: - Public properties
    var developers: Developers!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = UIImage(named: developers.fullName)
        fullNameLabel.text = developers.fullName
        birthdayLabel.text = developers.birthday
        bioTextView.text = developers.bio
    }
    
}
