//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by 清水世那 on 2021/06/21.
//

import UIKit

struct CalculateBrain {
    
    var bmi:BMI?
    mutating func calculateBMI(height:Float,weight:Int) {
        let bmiValue = Float(weight) / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "カロリーの高い食事を心がけてください", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "健康な状態です", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "日常に運動を取り入れてください!!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            )
        }
    }
    func getBMIValue () -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice () -> String
    {
        return bmi?.advice ?? "nothing"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
}
