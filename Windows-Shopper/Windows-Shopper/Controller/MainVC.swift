//
//  ViewController.swift
//  Windows-Shopper
//
//  Created by Full On Pimp on 06/06/2018.
//  Copyright © 2018 Nagels. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var ResualtLBL: UILabel!
    @IBOutlet weak var HoursLBL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9717252267, green: 0.5619667579, blue: 0.008637083771, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        ResualtLBL.isHidden = true
        HoursLBL.isHidden = true
    }

    
    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                ResualtLBL.isHidden = false
                HoursLBL.isHidden = false
                ResualtLBL.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func ClearCalculatorPressed(_ sender: Any) {
        ResualtLBL.isHidden = true
        HoursLBL.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

