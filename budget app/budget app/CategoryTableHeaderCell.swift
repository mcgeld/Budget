//
//  CategoryTableHeaderCell.swift
//  budget app
//
//  Created by Malcolm Geldmacher on 9/22/15.
//  Copyright (c) 2015 Malcolm Geldmacher. All rights reserved.
//

import UIKit

class CategoryTableHeaderCell: UITableViewCell {

    @IBAction func AddCategoryClicked(sender: AnyObject) {
        prepareForAddition()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    internal func prepareForAddition()
    {
        
    }

}
