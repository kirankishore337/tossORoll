//
//  rollDiceViewController.swift
//  tossORoll
//
//  Created by Kiran Kishore on 05/07/19.
//  Copyright © 2019 Kiran Kishore. All rights reserved.
//

import UIKit
import AVFoundation

class rollDiceViewController: UIViewController {
    
    
    
    @IBOutlet weak var diceImage: UIImageView!
    
    let randomDiceArray = ["d1", "d2", "d3", "d4", "d5", "d0"]
    
    var player : AVAudioPlayer!

    
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        diceImage.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func diceRollBttn(_ sender: UIButton) {
     
        updateDiceImages()
        
    }
    
    func updateDiceImages() {
        
        diceImage.isHidden = false
        
        let rnum1 = arc4random_uniform(5)
        
        let url = Bundle.main.url(forResource: "Dice Roll", withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            
        } catch {
            print(error)
        }
        
        player.prepareToPlay()
        player.play()
        
        diceImage.image = UIImage(named: "d\(rnum1)")
        
        }
    
}
