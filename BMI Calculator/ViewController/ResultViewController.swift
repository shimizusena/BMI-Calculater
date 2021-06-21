//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 清水世那 on 2021/06/18.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiValue = "0.0"
    var bmiAdvice:String!
    var BackGroundColor:UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        view.backgroundColor = BackGroundColor
    }
    
    @IBAction func reCalculatebuttom(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
