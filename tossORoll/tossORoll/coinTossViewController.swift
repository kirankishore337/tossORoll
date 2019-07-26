//
//  coinTossViewController.swift
//  tossORoll
//
//  Created by Kiran Kishore on 05/07/19.
//  Copyright © 2019 Kiran Kishore. All rights reserved.
//

import UIKit
import AVFoundation

class coinTossViewController: UIViewController {
    
    
    @IBOutlet weak var coinFace: UIImageView!
    
    struct Faces {
        var faceImg : UIImage
    }
    
    var objArray = [Faces]()
    
    var player : AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let obj1 = Faces(faceImg: #imageLiteral(resourceName: "coinMenuButton"))
        let obj2 = Faces(faceImg: #imageLiteral(resourceName: "coin_tails"))
        objArray = [obj1, obj2]

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tossCoinBttn(_ sender: UIButton) {
    
    
    coinFace.isHidden = false
    
    var text = ""
    
    let url = Bundle.main.url(forResource: "Coin Flip", withExtension: "mp3")!
    
    do {
    player = try AVAudioPlayer(contentsOf: url)
    
    } catch {
    print(error)
    }
    
    player.prepareToPlay()
    player.play()
    
    
    let num = Int(arc4random_uniform(2))
    print("\(num)")
    
    if num == 0 {
    text = "Its heads"
    }else if num == 1{
    text = "Its tails"
    }
    coinFace.image = objArray[num].faceImg
    
    let alert = UIAlertController(title: "\(text)", message: "", preferredStyle: UIAlertController.Style.alert)
    
    let tossAgain = UIAlertAction(title: "Toss Again", style: .default) { (UIAlertAction) in
        
        self.coinFace.isHidden = true
    }
    
    alert.addAction(tossAgain)
    
    self.present(alert, animated: true, completion: nil)

    }
}
