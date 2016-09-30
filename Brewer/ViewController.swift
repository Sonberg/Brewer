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
    let ratio = ["1/10", "2/10", "3/10", "4/10", "5/10"]
    
    @IBOutlet weak var pickerView: AKPickerView!
    @IBOutlet weak var pickerViewRatio: AKPickerView!
    @IBOutlet weak var coffeeLabel: SkyFloatingLabelTextField!
    @IBOutlet weak var waterLabel: SkyFloatingLabelTextField!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        self.pickerViewRatio.delegate = self
        self.pickerViewRatio.dataSource = self
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.setBackground()
        self.coffeeLabel.text = ""
        self.waterLabel.text = ""
        self.coffeeLabel.textAlignment = .left
        self.waterLabel.textAlignment = .left
        
        self.pickerView.font = UIFont(name: "AvenirNext-UltraLight", size: 30)!
        self.pickerView.highlightedFont = UIFont(name: "AvenirNext-UltraLight", size: 30)!
        self.pickerView.interitemSpacing = 20.0
        self.pickerView.pickerViewStyle = .wheel
        self.pickerView.reloadData()
        
        self.pickerViewRatio.font = UIFont(name: "AvenirNext-UltraLight", size: 30)!
        self.pickerViewRatio.highlightedFont = UIFont(name: "AvenirNext-UltraLight", size: 30)!
        self.pickerViewRatio.interitemSpacing = 20.0
        self.pickerViewRatio.pickerViewStyle = .wheel
        self.pickerViewRatio.reloadData()

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
    

    func numberOfItemsInPickerViewRatio(_ pickerViewRatio: AKPickerView) -> Int {
        return self.ratio.count
    }
    @nonobjc func pickerViewRatio(_ pickerViewRatio: AKPickerView, titleForItem item: Int) -> String {
        return self.ratio[item]
    }
    
    func pickerViewRatio(_ pickerViewRatio: AKPickerView, didSelectItem item: Int) {
        
    }

    



}

