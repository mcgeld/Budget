//
//  CategoryTableCellTableViewCell.swift
//  budget app
//
//  Created by Malcolm Geldmacher on 9/22/15.
//  Copyright (c) 2015 Malcolm Geldmacher. All rights reserved.
//

import UIKit

class CategoryTableCellTableViewCell: UITableViewCell {

    @IBOutlet weak var CategoryTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userInteractionEnabled = true;
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    internal func setCategoryTitle(title : String){
        CategoryTitleLabel.text = title;
    }

}
