//
//  ViewController.swift
//  TipsyCalcApp
//
//  Created by Nicolas Terrone on 09/01/2019.
//  Copyright © 2019 Nicolas Terrone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipPercentageLbl: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setTipCalculationValue(){
        tip.tipPercent = Double(tipPercentageSlider.value)
        tip.billAmount = ((textField.text)! as NSString).doubleValue
        tip.calculateTip()
    }
    
    func updateUI(){
        tipLbl.text = String(format: "%0.2f€", tip.tipAmount)
        totalLbl.text = String(format: "%0.2f€", tip.totalAmount)
        tipPercentageLbl.text = "Tip: \(Int(tipPercentageSlider.value * 100))%"
    }

    @IBAction func billAmountDidChange(_ sender: Any) {
        print("My value changed!")
    }
    @IBAction func tipPercentageDidChange(_ sender: Any) {
        print(tipPercentageSlider.value)
    }
    
}

