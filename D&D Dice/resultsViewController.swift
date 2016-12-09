//
//  resultsViewController.swift
//  D&D Dice
//
//  Created by VANDER HOEVEN, EVAN on 10/13/16.
//  Copyright © 2016 VANDER HOEVEN, EVAN. All rights reserved.
//

import Foundation
import UIKit

//MARK: Global Properties


class resultsViewController: UIViewController 
{
    //MARK: Properties
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var statsLabel: UILabel!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateStatistics(max: stats.max, min: stats.min, sum: stats.sum)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    
    @IBAction func returnToMain(_ sender: AnyObject)
    {
        self.performSegue(withIdentifier: "goBack", sender: self)
    }
    
    func updateStatistics(max: Int, min: Int, sum: Int)
    {
        self.statsLabel.text = "Max: \(max) Min: \(min) Sum: \(sum)"
    }
    
}
