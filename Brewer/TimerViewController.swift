//
//  TimerViewController.swift
//  Brewer
//
//  Created by Per Sonberg on 2016-09-12.
//  Copyright © 2016 Per Sonberg. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(TimerViewController.onTapScreen))
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(tapRecognizer)
    }
    
    func onTapScreen() {
        self.dismiss(animated: true, completion: nil)
    }

}
