//
//  PreferenceViewController.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 3/28/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit
import StepSlider

class PreferenceViewController: ViewController {

    override func viewDidLoad() {
//        addCustomSlider()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func addCustomSlider() {
        // Slider dimensions
        let customSlider = StepSlider.init(frame:CGRect(origin: CGPoint(x: 10,y :200), size: CGSize(width: self.view.bounds.maxX * 0.75, height:  self.view.bounds.maxY/2 * 0.3)))
        
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
        customSlider.index = 2
        
        self.view.addSubview(customSlider)
    }

}
