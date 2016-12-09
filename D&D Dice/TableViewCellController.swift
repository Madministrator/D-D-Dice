//
//  TableViewCellController.swift
//  D&D Dice
//
//  Created by VANDER HOEVEN, EVAN on 10/18/16.
//  Copyright © 2016 VANDER HOEVEN, EVAN. All rights reserved.
//

import UIKit

class TableViewCellController: UITableViewCell
{
    //MARK: Properties
    
    @IBOutlet weak var singleDie: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
