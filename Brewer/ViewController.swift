//
//  ViewController.swift
//  Brewer
//
//  Created by Per Sonberg on 2016-09-09.
//  Copyright © 2016 Per Sonberg. All rights reserved.
//

import UIKit
import AKPickerView_Swift
import ChameleonFramework
import SkyFloatingLabelTextField

class ViewController: UIViewController, AKPickerViewDelegate, AKPickerViewDataSource {
    
    let screenSize : CGRect = UIScreen.main.bounds
    let methods = ["Chemex", "Aeropress", "Pour-over"]
    
    @IBOutlet weak var pickerView: AKPickerView!
    @IBOutlet weak var coffeeLabel: SkyFloatingLabelTextField!
    @IBOutlet weak var waterLabel: SkyFloatingLabelTextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.setBackground()
        self.coffeeLabel.text = ""
        self.waterLabel.text = ""
        self.coffeeLabel.textAlignment = .left
        self.waterLabel.textAlignment = .right
        
        self.pickerView.font = UIFont(name: "HelveticaNeue-Light", size: 32)!
        self.pickerView.highlightedFont = UIFont(name: "HelveticaNeue-Light", size: 32)!
        self.pickerView.interitemSpacing = 20.0
        self.pickerView.pickerViewStyle = .wheel
        self.pickerView.reloadData()
    }

    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        self.setBackground()
    }
    
    func setBackground() -> Void {
        
        let colors = [
            UIColor(red: 244.0/255.0, green: 112.0/255.0, blue: 128.0/255.0, alpha: 1.0),
            UIColor(red: 193.0/255.0, green: 107.0/255.0, blue: 132.0/255.0, alpha: 1.0)
        ]
        
        self.view.backgroundColor = UIColor(gradientStyle: UIGradientStyle.topToBottom, withFrame: self.screenSize, andColors: colors)
    }
    
    func numberOfItemsInPickerView(_ pickerView: AKPickerView) -> Int {
        return self.methods.count
    }
    func pickerView(_ pickerView: AKPickerView, titleForItem item: Int) -> String {
        return self.methods[item]
    }
    
    func pickerView(_ pickerView: AKPickerView, didSelectItem item: Int) {
        
    }
    
    



}

