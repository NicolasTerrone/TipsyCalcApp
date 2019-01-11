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
    
    init(billAmount: Double, tipPercent:Double){
        self._billAmount = billAmount
        self._tipPercent = tipPercent
    }
    
    func calculateTip(){
        _tipAmount = _billAmount * _tipPercent
        _totalAmount = _tipAmount + _billAmount
    }
}
