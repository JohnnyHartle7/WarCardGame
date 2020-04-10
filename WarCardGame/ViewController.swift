//
//  ViewController.swift
//  WarCardGame
//
//  Created by 90306193 on 2/3/20.
//  Copyright © 2020 JohnnyHartle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var LeftCardButton:
    UIImageView!
    
    
    @IBOutlet weak var RightCardButton:
    UIImageView!
    
    
    @IBOutlet weak var PlayerLabel:
    UILabel!
    
    
    @IBOutlet weak var CPULabel: UILabel!
    
    var leftscore = 0
    
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func DealTap(_ sender: Any) {
        
        //randomize numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //changing image of the cards
        LeftCardButton.image =   UIImage(named:"card\(leftNumber)")
        RightCardButton.image = UIImage(named:"card\(rightNumber)")
        
        //changing the image of the label scores
        if leftNumber > rightNumber {
            leftscore += 1
            PlayerLabel.text = String(leftscore)
            
        } else if rightNumber > leftNumber {
            rightscore += 1
            CPULabel.text = String(rightscore)
            
        }else {
            
            
        }
        
    }
    
    
}

