//
//  ViewController.swift
//  multiples
//
//  Created by Vyacheslav Horbach on 14/02/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    
    // variables
    var numberMultiplied = 0
    var numberOne = 0
    var resultNumber = 0
    
    
    //functions
    func add() -> Int {
        resultNumber = numberOne + numberMultiplied
        return resultNumber
    }
    
    
    
    //code
 
    @IBAction func startPlay(sender: AnyObject) {
        logo.hidden = true
        inputField.hidden = true
        playBtn.hidden = true
        
        resultLbl.hidden = false
        addBtn.hidden = false
        
        numberMultiplied = Int(inputField.text!)!
    }

    @IBAction func addNumber(sender: AnyObject) {
        
        add()
        
        resultLbl.text = "\(numberOne) + \(numberMultiplied) = \(resultNumber)"
        
        numberOne = resultNumber
        
    }

}
