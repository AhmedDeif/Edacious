//
//  RecipeTabbedViewController.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 4/12/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class RecipeTabbedViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        self.settings.style.selectedBarBackgroundColor = UIColor.init(red: 237/255, green: 56/255, blue: 81/255, alpha: 1)
        self.settings.style.buttonBarBackgroundColor = UIColor.white
        self.settings.style.buttonBarItemTitleColor = UIColor.init(red: 120/255, green: 144/255, blue: 156/255, alpha: 1)
        self.settings.style.buttonBarItemBackgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.7)
        self.settings.style.buttonBarItemFont = UIFont.init(name: "Futura-CondensedMedium", size: 14)!
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override public func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let directionsView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RecipeDirectionsView")
        let ingredientsView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RecipeIngredientsView")
        let reviewsView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RecipeReviewsView")
        let authorView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RecipeAuthorView")
        return [directionsView, ingredientsView, reviewsView, authorView]
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
