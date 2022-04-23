//
//  ViewController.swift
//  timerProject
//
//  Created by İrem Akgoz on 23.04.2022.
//  Copyright © 2022 Irem Akgoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil , repeats: true)
     
    }
    
    @objc func  timerFunction() {
        timeLabel.text = "time : \(counter)"
        counter -= 1
        
        if counter ==  0{
            timer.invalidate()
            timeLabel.text = "time is over"
        }
        
        
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
    }
    
}

