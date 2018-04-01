//
//  RecipeCollectionViewCell.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 4/1/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit

class RecipeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addToFavoriteButton: UIButton!
    @IBOutlet weak var recipeDescriptionLabel: UILabel!
    
    func setData(recipe : RecipeThumb) {
        // set author name to have different color
        let recipeDesc = recipe.author + " created this recipe"
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: recipeDesc);
        attributedString.setColorForStr(textToFind:recipe.author, color: UIColor(red:  237.0 / 255.0, green: 56.0 / 255.0, blue: 81.0 / 255.0, alpha: 1.0));
        
        self.imageView.image = recipe.thumbnail
        self.titleLabel.text = recipe.title
        self.recipeDescriptionLabel.attributedText = attributedString
    }
    
}
