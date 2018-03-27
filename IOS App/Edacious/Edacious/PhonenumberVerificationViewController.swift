//
//  PhonenumberVerificationViewController.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 3/26/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit
import StepSlider

class PhonenumberVerificationViewController: ViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        addCustomSlider()
        styleTextField()
        textField.delegate = self
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        if (textField.text?.count == 3) {
            textField.text = textField.text! + "-"
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // prevent the user from entering more than 6 digits
        if (string.count == 6) {
            return false;
        }
        return true;
    }
    
    func styleTextField() {
        textField.layer.cornerRadius = 26
        textField.layer.borderWidth = 0.5
        textField.layer.borderColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
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
        customSlider.index = 1
        
        self.view.addSubview(customSlider)
    }

}
