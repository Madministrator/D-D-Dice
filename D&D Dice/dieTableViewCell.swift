//
//  dieTableViewCell.swift
//  D&D Dice
//
//  Created by VANDER HOEVEN, EVAN on 10/19/16.
//  Copyright © 2016 VANDER HOEVEN, EVAN. All rights reserved.
//

import UIKit

class dieTableViewCell: UITableViewCell
{
    //MARK: Properties
    @IBOutlet weak var dieLabel: UILabel!
    
    
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
