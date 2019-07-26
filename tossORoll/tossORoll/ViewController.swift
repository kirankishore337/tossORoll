//
//  ViewController.swift
//  tossORoll
//
//  Created by Kiran Kishore on 05/07/19.
//  Copyright © 2019 Kiran Kishore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func goToCoinToss(_ sender: UIButton) {
   
        performSegue(withIdentifier: "tossCoinScreen", sender: self)
    
    }
    
    
    
    @IBAction func goToDiceRoll(_ sender: UIButton) {
        
        performSegue(withIdentifier: "rollDieScreen", sender: self)

        
    }
    

}

