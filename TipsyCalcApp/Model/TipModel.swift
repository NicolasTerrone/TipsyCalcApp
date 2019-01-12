//
//  TipModel.swift
//  TipsyCalcApp
//
//  Created by Nicolas Terrone on 11/01/2019.
//  Copyright © 2019 Nicolas Terrone. All rights reserved.
//

import Foundation

class TipModel{
    private var _billAmount: Double = 0
    private var _tipPercent: Double = 0
    private var _tipAmount: Double = 0
    private var _totalAmount: Double = 0
    private var _numberOfPeople: Double = 1
    private var _totalAmountByPerson: Double = 0
    
    var billAmount: Double{
        get{
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double{
        get{
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    
    var tipAmount: Double{
        get{
            return _tipAmount
        }
    }
    
    var totalAmount: Double{
        get{
            return _totalAmount
        }
    }
    
    var numberOfPeople: Double{
        get{
            return _numberOfPeople
        } set {
            _numberOfPeople = newValue
        }
    }
    
    var totalAmountByPerson: Double{
        get{
            return _totalAmountByPerson
        }
    }
    
    init(billAmount: Double, tipPercent:Double, numberOfPeople: Double){
        self._billAmount = billAmount
        self._tipPercent = tipPercent
        self._numberOfPeople = numberOfPeople
    }
    
    func calculateTip(){
        _tipAmount = _billAmount * _tipPercent
        _totalAmount = _tipAmount + _billAmount
        _totalAmountByPerson = _totalAmount / _numberOfPeople
    }
}
