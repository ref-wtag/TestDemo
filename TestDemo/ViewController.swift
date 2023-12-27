//
//  ViewController.swift
//  TestDemo
//
//  Created by Refat E Ferdous on 12/27/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

struct Calculation {
    func calculateTip(of enteredAmount : Double, with tip : Double) -> Double? {
        
        guard enteredAmount >= 0 && tip>=0 else { return nil }
        let tipPercentage = tip/100
        return enteredAmount * tipPercentage
        
    }
}
