//
//  RecipePreference.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 3/28/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import Foundation
import UIKit

class RecipePreference {
    
    var title:String = ""
    var description: String = ""
    var image: UIImage
    
    init(title: String, description: String, image: UIImage) {
        self.title = title
        self.description = description
        self.image = image
    }
    
}
