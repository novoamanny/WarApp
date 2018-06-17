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

    @IBAction func dealButton(_ sender: Any) {
        
        let leftRandomNum = arc4random_uniform(13) + 2 // 2 - 14
        
        let rightRandomNum = arc4random_uniform(13) + 2 // 2 - 14
        
        leftImageView.image = UIImage(named: "card\(leftRandomNum)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNum)")
        
        
    }
    
}

