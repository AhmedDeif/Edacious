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
    

    @IBOutlet weak var phoneNumberTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addCustomSlider()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0) {
            return  tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        }
        if (indexPath.row == 1) {
            return tableView.dequeueReusableCell(withIdentifier: "PhoneNumberCell", for: indexPath)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
