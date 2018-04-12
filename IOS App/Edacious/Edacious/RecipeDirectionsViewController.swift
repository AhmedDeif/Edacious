//
//  RecipeDirectionsViewController.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 4/12/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class RecipeDirectionsViewController: UIViewController, IndicatorInfoProvider {
    
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var directionsTextContainer: UIView!
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "DIRECTION")
    }
    

    override func viewDidLoad() {
        directionsTextContainer.layer.cornerRadius = 2.5
        shadowView.layer.cornerRadius = 2.5

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
