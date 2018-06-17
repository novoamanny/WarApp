//
//  ViewController.swift
//  WarApp
//
//  Created by Manuel Novoa on 6/16/18.
//  Copyright © 2018 Novoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Image Views
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    // Labels
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var leftScore = 0
    var rightScore = 0
    //let loop = true;

    @IBAction func dealButton(_ sender: Any) {
        
        // Random Number generators
        let leftRandomNum = arc4random_uniform(13) + 2; // 2 - 14
        
        let rightRandomNum = arc4random_uniform(13) + 2; // 2 - 14
        
        leftImageView.image = UIImage(named: "card\(leftRandomNum)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNum)")
        
        
        // Compare
        
        if (leftRandomNum > rightRandomNum){
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if (rightRandomNum > leftRandomNum){
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else{
            
        }
        
        
        
    }
    
}

