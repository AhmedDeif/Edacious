//
//  PhoneNumberTableViewCell.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 3/25/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit

class PhoneNumberTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var countryCodeLabel: UILabel!
    @IBOutlet weak var phoneNumberTextbox: UITextField!
    var delegateViewControllerNavigatorDelegate: VerificationViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        phoneNumberTextbox.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: true)

        // Configure the view for the selected state
    }
    
    func setText(Country: String) {
        self.countryCodeLabel.text = Country
    }
    
    func wasSelected() {
        phoneNumberTextbox.placeholder = ""
        phoneNumberTextbox.isUserInteractionEnabled = true
        phoneNumberTextbox.becomeFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.delegateViewControllerNavigatorDelegate?.navigateToController()
        return true;
    }
}

protocol ViewControllerNavigatorDelegate {
    func navigateToController()
}

