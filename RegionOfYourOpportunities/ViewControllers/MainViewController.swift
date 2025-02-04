//
//  ViewController.swift
//  RegionOfYourOpportunities
//
//  Created by Владислав Якунин on 30.01.2025.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var mainTextField: UITextView!
    
    @IBOutlet var orangeButton: UIButton!
    @IBOutlet var blueButton: UIButton!
    @IBOutlet var pinkButton: UIButton!
    @IBOutlet var greenButton: UIButton!
    
    // MARK: - Private properties
    private var main = Main.getMainText()

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTextField.text = main.text
        settingsButtons(orangeButton, blueButton, pinkButton, greenButton)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "orangeSegue":
            guard segue.destination is PropertySupportTableViewController else { return }
        case "blueSegue":
            guard segue.destination is BenefitsTableViewController else { return }
        case "pinkSegue":
            guard segue.destination is YouthInitiativesTableViewController else { return }
        default:
            guard segue.destination is FinancialSupportTableViewController else { return }
        }
    }
    
    // MARK: - Private methods
    private func settingsButtons(_ buttons: UIButton...) {
        buttons.forEach { button in
            switch button {
            case orangeButton:
                orangeButton.setTitle("Имущественная поддержка", for: .normal)
                orangeButton.tintColor = .systemOrange
                orangeButton.layer.cornerRadius = 15
            case blueButton:
                blueButton.setTitle("Льготы", for: .normal)
                blueButton.tintColor = .systemBlue
                blueButton.layer.cornerRadius = 15
            case pinkButton:
                pinkButton.setTitle("Поддержка молодежных инициатив", for: .normal)
                pinkButton.tintColor = .systemPink
                orangeButton.layer.cornerRadius = 15
            default:
                greenButton.setTitle("Финансовая поддержка", for: .normal)
                greenButton.tintColor = .systemGreen
                greenButton.layer.cornerRadius = 15
            }
        }
    }
}
