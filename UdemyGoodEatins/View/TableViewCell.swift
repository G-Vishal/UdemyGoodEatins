//
//  TableViewCell.swift
//  UdemyGoodEatins
//
//  Created by Vishal Shelake on 30/10/19.
//  Copyright © 2019 Vishal Shelake. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellImgLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cellImageView.layer.cornerRadius = 10
        
    }
    
    func configureCell(category: FoodCategory){
        cellImageView.image = UIImage(named: category.imageName)
        cellImgLbl.text = category.title
    }

}
