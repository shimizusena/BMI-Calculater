//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by 清水世那 on 2021/06/18.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightButton: UISlider!
    @IBOutlet weak var weightButton: UISlider!
    var calclateBrain = CalculateBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
   
        heightButton.value = 1.5
     
        weightButton.value = 75
    }

    @IBAction func heightSlider(_ sender: UISlider){
        let numRound = round(sender.value*100)/100
        heightLabel.text = "\(String(numRound))m"
            }
    
    @IBAction func weightSlider(_ sender: UISlider){
        weightLabel.text = "\(String(Int(sender.value)))kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let height =  round(heightButton.value*100)/100
        let weight = Int(weightButton.value)
        calclateBrain.calculateBMI(height:height,weight:weight)

        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calclateBrain.getBMIValue()
            destinationVC.bmiAdvice = calclateBrain.getAdvice()
            destinationVC.BackGroundColor = calclateBrain.getColor()
        }
    }
    
}
