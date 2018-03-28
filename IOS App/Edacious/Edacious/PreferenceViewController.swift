//
//  PreferenceViewController.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 3/28/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit
import StepSlider
import ScalingCarousel

class PreferenceViewController: ViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
    
    @IBOutlet weak var carousel: ScalingCarouselView!
    fileprivate var scalingCarousel: ScalingCarouselView!
    var receipePreferences : [RecipePreference] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return receipePreferences.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        if let scalingCell = cell as? ScalingCarouselCell {
            scalingCell.mainView.backgroundColor = .blue
        }
        cell.setData(recipe: receipePreferences[indexPath.row])
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        carousel.didScroll()
    }
    
    
    override func viewDidLoad() {
        carousel.delegate = self
        carousel.dataSource = self
        carousel.backgroundView = nil
        carousel.backgroundColor = UIColor.clear
        addCustomSlider()
        initRecipes()
    }
    
    func initRecipes() {
        let preference1 = RecipePreference(title: "protein", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt", image: #imageLiteral(resourceName: "layer4"))
        let preference2 = RecipePreference(title: "Vegetables", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt", image: #imageLiteral(resourceName: "layer5"))
        let preference3 = RecipePreference(title: "Fruits", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt", image: #imageLiteral(resourceName: "layer2"))
        receipePreferences.append(preference1)
        receipePreferences.append(preference2)
        receipePreferences.append(preference3)
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
    
    // not called
    private func addCarousel() {
        let frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        scalingCarousel = ScalingCarouselView(withFrame: frame, andInset: 20)
        scalingCarousel.dataSource = self
        scalingCarousel.delegate = self
        scalingCarousel.translatesAutoresizingMaskIntoConstraints = false
        scalingCarousel.backgroundColor = .white
        
        scalingCarousel.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        view.addSubview(scalingCarousel)
        
        // Constraints
        scalingCarousel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        scalingCarousel.heightAnchor.constraint(equalToConstant: 300).isActive = true
        scalingCarousel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scalingCarousel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
    }

}
