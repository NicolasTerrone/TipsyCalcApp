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
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    @IBOutlet weak var totalByPersonLbl: UILabel!
    @IBOutlet weak var peopleLbl: UILabel!
    
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0, numberOfPeople: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTipCalculationValue()
        updateUI()
    }
    
    func setTipCalculationValue(){
        tip.tipPercent = Double(tipPercentageSlider.value)
        tip.billAmount = ((textField.text)! as NSString).doubleValue
        tip.numberOfPeople = Double(numberOfPeopleSlider.value)
        tip.calculateTip()
    }
    
    func updateUI(){
        tipLbl.text = String(format: "%0.2f€", tip.tipAmount)
        totalLbl.text = String(format: "%0.2f€", tip.totalAmount)
        totalByPersonLbl.text = String(format: "%0.2f€", tip.totalAmountByPerson)
        tipPercentageLbl.text = "Tip: \(Int(tipPercentageSlider.value * 100))%"
        peopleLbl.text = "Divided by \(Int(numberOfPeopleSlider.value))"
    }

    @IBAction func billAmountDidChange(_ sender: Any) {
        //print("My value changed!") //DEBUG
        setTipCalculationValue()
        updateUI()
    }
    @IBAction func tipPercentageDidChange(_ sender: UISlider) {
        // print(tipPercentageSlider.value) //DEBUG
        let steps: Float = 100
        let roundedValue = round(sender.value * steps) / steps
        sender.value = roundedValue
        
        
        setTipCalculationValue()
        updateUI()
    }
    
    @IBAction func numberOfPeopleDidChange(_ sender: UISlider) {
        let steps: Float = 1
        let roundedValue = round(sender.value * steps) / steps
        sender.value = roundedValue
        
        setTipCalculationValue()
        updateUI()
    }
    
   
}

