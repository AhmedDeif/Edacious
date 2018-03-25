//
//  CountryListCell.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 3/25/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit

class CountryListCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setText(Country: String) {
        self.label.text = Country
    }

}
