//
//  rollTableViewCell.swift
//  D&D Dice
//
//  Created by VANDER HOEVEN, EVAN on 10/19/16.
//  Copyright © 2016 VANDER HOEVEN, EVAN. All rights reserved.
//

import UIKit

class rollTableViewCell: UITableViewCell {

    var dieLabel = UILabel()

    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //Customize elements here
        //myLabel.backgroundColor = UIColor.yellow
       // newLabel.backgroundColor = UIColor.blue
        
        //Add elements as subview to the contentView
        self.contentView.addSubview(dieLabel)

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //Set element sizes
        dieLabel.frame = CGRect(x: 20, y: 0, width: 100, height: 30)
    }


}
