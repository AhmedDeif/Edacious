//
//  RecipeTimelineViewController.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 4/1/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit

class RecipeTimelineViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var recipeCollectionView: UICollectionView!
    var recipes = [RecipeThumb]()
    
    override func viewDidLoad() {
        recipeCollectionView.dataSource = self
        initRecipeList()
    }
    
    @IBAction func settingsButtonClicked(_ sender: Any) {
        let modalView = ModalViewController()
        modalView.modalPresentationStyle = .overCurrentContext
        present(modalView, animated: true, completion: nil)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecipeViewCell", for: indexPath) as! RecipeCollectionViewCell
        cell.setData(recipe: recipes[indexPath.row])
        return cell
    }
    
    func initRecipeList() {
        let recipeTumb1 = RecipeThumb(title: "Avocado Ice Cream", author: "Nam dapidu", thumbnail: #imageLiteral(resourceName: "layer2"))
        let recipeTumb2 = RecipeThumb(title: "Ice Cream Truffles", author: "Breyers", thumbnail: #imageLiteral(resourceName: "layer3"))
        let recipeTumb3 = RecipeThumb(title: "Ice Cream Truffles", author: "Breyers", thumbnail: #imageLiteral(resourceName: "layer5"))
        let recipeTumb4 = RecipeThumb(title: "Ice Cream Truffles", author: "Breyers", thumbnail: #imageLiteral(resourceName: "layer3"))
        recipes.append(recipeTumb1)
        recipes.append(recipeTumb2)
        recipes.append(recipeTumb3)
        recipes.append(recipeTumb4)
    }
}

