//
//  RecipeDetailVC.swift
//  UdemyGoodEatins
//
//  Created by Vishal Shelake on 05/11/19.
//  Copyright © 2019 Vishal Shelake. All rights reserved.
//

import UIKit

class RecipeDetailVC: UIViewController {

    @IBOutlet weak var recipeDetailImage: UIImageView!
    @IBOutlet weak var recipeDetailTitle: UILabel!
    @IBOutlet weak var recipeDetailInstruction: UILabel!
    
    var selectedRecipe : Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(selectedRecipe!)
        recipeDetailImage.image = UIImage(named: selectedRecipe.imageName)
        recipeDetailTitle.text = selectedRecipe.title
        recipeDetailInstruction.text = selectedRecipe.instructions
        

      
    }
    

}
