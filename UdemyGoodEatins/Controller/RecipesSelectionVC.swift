//
//  RecipesSelectionVC.swift
//  UdemyGoodEatins
//
//  Created by Vishal Shelake on 05/11/19.
//  Copyright © 2019 Vishal Shelake. All rights reserved.
//

import UIKit

class RecipesSelectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var selectedCatagory : String!
    var recipes : [Recipe]!
    var data = DataSet()
    var selectedRecipeToPass : Recipe!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        recipes = data.getRecipes(forCategoryTitle: selectedCatagory)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as? RecipesDetailsCell {
            let recipe = recipes[indexPath.item]
            cell.configureCell(recipe: recipe)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let cellDimenstion = (width / 2) - 15
        return CGSize (width: cellDimenstion, height: cellDimenstion)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedRecipeToPass = recipes[indexPath.item]
        performSegue(withIdentifier: "toRecipeSelected", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? RecipeDetailVC {
            detailVC.selectedRecipe = selectedRecipeToPass
        }
    }
}
