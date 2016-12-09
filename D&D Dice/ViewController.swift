//
//  ViewController.swift
//  D&D Dice
//
//  Created by VANDER HOEVEN, EVAN on 10/11/16.
//  Copyright © 2016 VANDER HOEVEN, EVAN. All rights reserved.
//

import UIKit

//MARK: Global properties
var rolls: [Int] = [] //Blank array for now
let cellReuseIdendifier = "rollTableViewCell"


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    //MARK: Properties
    @IBOutlet weak var dieSelector: UISegmentedControl!
    @IBOutlet weak var dieCounter: UILabel!
    @IBOutlet weak var dieStepper: UIStepper!
    @IBOutlet weak var rollButton: UIButton!
    
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var rollViewer: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.register(rollTableViewCell.self, forCellReuseIdentifier: cellReuseIdendifier)
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: Functions
    @IBAction func changeCount(_ sender: UIStepper)
    {
        let count = Int(self.dieStepper.value)
        self.dieCounter.text = "Roll \(count) Die"
    }
    
    @IBAction func changeScenesAndRoll(_ sender: UIButton)
    {
        //The following code determines what die to roll
        let index = self.dieSelector.selectedSegmentIndex
        var sides: Int
        switch index
        {
        case 0:
            sides = 4
        case 1:
            sides = 6
        case 2:
            sides = 8
        case 3:
            sides = 10
        case 4:
            sides = 12
        case 5:
            sides = 20
        default:
            sides = 0
        }
        //Reads the number of die to roll
        let count: Int = Int(self.dieStepper.value)
        //Creates the array of die rolls
        rolls = rollDice(sides: sides, count: count)
        
        //Changes the statistics in the results label
        let stats = statistics(rolls: rolls)
        self.resultsLabel.text = "Max: \(stats.max) Min: \(stats.min) Sum: \(stats.sum)"
        
        //Pass rolls to the new screen and switch screens
        //self.performSegue(withIdentifier: "rollSegue", sender: self)
        
        tableView.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rolls.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdendifier, for: indexPath as IndexPath) as! rollTableViewCell
        
        //Add array elements to all cells
        cell.dieLabel.text = "\(rolls[indexPath.row])"
        
        return cell
    }
    
    
    
}

