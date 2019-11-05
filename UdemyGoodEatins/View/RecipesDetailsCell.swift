//
//  RecipesDeails.swift
//  UdemyGoodEatins
//
//  Created by Vishal Shelake on 05/11/19.
//  Copyright © 2019 Vishal Shelake. All rights reserved.
//

import UIKit

class RecipesDetailsCell: UICollectionViewCell  {
    
    
    @IBOutlet weak var recipeImageView: UIImageView!
    
    @IBOutlet weak var recipeImageTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImageView.layer.cornerRadius = 10
       
        recipeImageView.layer.shadowOpacity = 0.9
    }
    
    func configureCell(recipe: Recipe) {
        recipeImageView.image = UIImage(named: recipe.imageName )
        recipeImageTitle.text = recipe.title
    }
    
    
    
    
}
