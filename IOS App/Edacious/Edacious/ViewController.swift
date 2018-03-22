//
//  ViewController.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 3/22/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sloganLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  Set color of string "food lovers" to red
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: self.sloganLabel.text!);
        attributedString.setColorForStr(textToFind: "food lovers", color: UIColor(red:  237.0 / 255.0, green: 56.0 / 255.0, blue: 81.0 / 255.0, alpha: 1.0));
        self.sloganLabel.attributedText = attributedString;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension NSMutableAttributedString {
    
    // Sets color of textToFind in a String to given color.
    func setColorForStr(textToFind: String, color: UIColor) {
        let range = self.mutableString.range(of: textToFind, options:NSString.CompareOptions.caseInsensitive);
        if range.location != NSNotFound {
            self.addAttribute(NSAttributedStringKey.foregroundColor, value: color, range: range);
        }
        
    }
}

@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

