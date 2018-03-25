//
//  VerificationViewController.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 3/22/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit
import StepSlider

class VerificationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var selectedCountry: String?
    var countries = [String:String]()
    @IBOutlet weak var phoneNumberTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCountryCodes()
        addCustomSlider()
        if (selectedCountry == nil) {
            selectedCountry = countries.first?.key
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
                as! SelectedCountryTableViewCell
            if (selectedCountry != nil) {
                cell.setText(Country: selectedCountry!)
            }
            return cell
        }
        if (indexPath.row == 1) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PhoneNumberCell", for: indexPath)
                as! PhoneNumberTableViewCell
            if (selectedCountry != nil) {
                cell.setText(Country: "+" + countries[selectedCountry!]!)
            }
            else {
                cell.setText(Country: "+20")
            }
            return cell
        }
        // code should fail
        print("Unexpected Behavior, There are more than two cells in the table view or it is empty.")
        return UITableViewCell.init();
    }
    
    func addCustomSlider() {
        // Slider dimensions
        let customSlider = StepSlider.init(frame:CGRect(origin: CGPoint(x: 10,y :200), size: CGSize(width: self.view.bounds.maxX * 0.75, height:  self.view.bounds.maxY * 0.07)))
        
        // Slider positioning
        customSlider.center = CGPoint.init(x: self.view.bounds.midX, y: self.view.bounds.maxY/5)
        
        // Slider labels
        let sliderLabels = ["Phone", "Verify", "Preferance"]
        customSlider.labels = sliderLabels
        customSlider.labelColor = UIColor.init(red: 71/255, green: 71/255, blue: 71/255, alpha: 1)
        customSlider.labelOffset = 0
        customSlider.labelFont = UIFont.init(name: "HelveticaNeue", size: 13.5)
        
        // Slider Styling
        customSlider.tintColor =  UIColor.init(red: 237/255, green: 56/255, blue: 81/255, alpha: 1)
        customSlider.trackColor = UIColor.init(red: 235/255, green: 208/255, blue: 211/255, alpha: 1)
        customSlider.sliderCircleImage = UIImage(named: "tick")
        customSlider.trackCircleRadius = 15
        customSlider.trackHeight = 7.5
        customSlider.index = 0
        
        self.view.addSubview(customSlider)
    }
    
    func loadCountryCodes () {
        var myDict: NSDictionary?
        if let path = Bundle.main.path(forResource: "CountryPhoneExtensions", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
            let contents = NSDictionary(contentsOfFile: path) as? [String : String]
            for item in contents! {
                countries[item.key] = item.value
            }
        }
    }

}
