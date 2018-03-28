//
//  CollectionViewCell.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 3/28/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit
import ScalingCarousel

class CollectionViewCell: ScalingCarouselCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellAddButton: UIButton!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var cellDescription: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        mainView = UIView(frame: contentView.bounds)
        contentView.addSubview(mainView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setData(recipe: RecipePreference) {
        self.cellImage.image = recipe.image
        self.title.text = recipe.title
        self.cellDescription.text = recipe.description
    }
    
}
