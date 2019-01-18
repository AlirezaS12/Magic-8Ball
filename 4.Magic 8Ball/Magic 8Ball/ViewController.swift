//
//  ViewController.swift
//  Magic 8Ball
//
//  Created by ali on 1/14/19.
//  Copyright © 2019 com.alireza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber: Int = 0
    
    
    var ballArray: Array = ["ball1","ball2","ball3","ball4"]
    
    @IBOutlet var answerImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func answerQuestion() {
        randomBallNumber = Int.random(in: 0 ... 4)
        
        answerImageView.image = UIImage(named: "ball" + "\(randomBallNumber + 1)")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            answerQuestion()
        }
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        answerQuestion()
        
        
    }
    
}

