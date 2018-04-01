//
//  recipeThumb.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 4/1/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import Foundation
import UIKit

class RecipeThumb {
    
    var title:String = ""
    var author: String = ""
    var thumbnail: UIImage
    
    init(title: String, author: String, thumbnail: UIImage) {
        self.title = title
        self.author = author
        self.thumbnail = thumbnail
    }
    
}
