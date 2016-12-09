//
//  dieRollingFunctions.swift
//  D&D Dice
//
//  Created by VANDER HOEVEN, EVAN on 10/12/16.
//  Copyright © 2016 VANDER HOEVEN, EVAN. All rights reserved.
//

import Foundation

func rollSingleDie (sides: Int) -> (Int)
{
    let die: Int = Int(arc4random_uniform(UInt32(sides))) + 1// emulates die roll
    return die
}

func rollDice (sides: Int, count: Int) -> ([Int])
{
    //make and pass arrayList of die rolls
    var rolls: [Int] = [] // blank array
    for _ in 0..<count // for loop for desired dice rolls
    {
        let roll = rollSingleDie(sides: sides)
        rolls.append(roll) //I'm not sure the syntax is right here, the intent
        // is to add the roll to the end of the array.
    }
    return rolls
}

func statistics (rolls: [Int]) -> (max: Int, min: Int, sum: Int)
{
    var max: Int = 0
    var min: Int = 21
    var sum = 0
    
    for roll in rolls
    {
        if roll > max
        {
            max = roll
        }
        if roll < min
        {
            min = roll
        }
        sum += roll
    }
    return (max, min, sum)
}
