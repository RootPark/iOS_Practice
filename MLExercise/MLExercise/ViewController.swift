//
//  ViewController.swift
//  MLExercise
//
//  Created by 박근원 on 2022/06/02.
//

import UIKit
import CoreML

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do{
            let config = MLModelConfiguration()
            let inference = try SqueezeNet(configuration: config)
            
            let url = Bundle.main.url(forResource: "banana", withExtension: "jpeg")
            let input = try SqueezeNetInput(imageAt: url)
            let output = try inference.prediction(input: input)
            
            let sorted = output.classLabelsProbs.sorted{ (left, right) in
                return left.value > right.value
            }
            debugPrint(sorted[0],sorted[1])
            
        }
        catch let error{
            debugPrint("Error: ",error)
        }
    }


}

