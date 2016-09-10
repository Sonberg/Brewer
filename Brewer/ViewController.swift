//
//  ViewController.swift
//  Brewer
//
//  Created by Per Sonberg on 2016-09-09.
//  Copyright © 2016 Per Sonberg. All rights reserved.
//

import UIKit
import CountdownLabel

class ViewController: UIViewController {
    
    @IBOutlet weak var countDownView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBackground()
        self.setTimer()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setTimer() -> Void {
        let countdownLabel = CountdownLabel(frame: self.countDownView.frame, minutes: 30) // you can use NSDate as well
        countdownLabel.start()
    }
    
    func setBackground() -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        
        gradient.colors = [
           // UIColor(red: 248.0/255.0, green: 177.0/255.0, blue: 149.0/255.0, alpha: 1.0).CGColor,
            UIColor(red: 244.0/255.0, green: 112.0/255.0, blue: 128.0/255.0, alpha: 1.0).CGColor,
            UIColor(red: 193.0/255.0, green: 107.0/255.0, blue: 132.0/255.0, alpha: 1.0).CGColor,
            UIColor(red: 107.0/255.0, green: 92.0/255.0, blue: 123.0/255.0, alpha: 1.0).CGColor
        ]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        self.view.layer.insertSublayer(gradient, atIndex: 0)
    }


}

