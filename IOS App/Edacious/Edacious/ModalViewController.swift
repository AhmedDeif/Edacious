//
//  ModalViewController.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 4/1/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    
    override func viewDidLoad() {
//        self.view.backgroundColor = UIColor.clear
        self.view.isOpaque = false
    }
    
    @IBAction func closeButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
