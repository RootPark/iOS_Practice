//
//  ViewController.swift
//  Color_picker
//
//  Created by 박근원 on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        colorView.layer.borderWidth = 1
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        updateColor()
        updateControl()
        
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        updateControl()
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
    
        redSlider.value = 1.0
        greenSlider.value = 1.0
        blueSlider.value = 1.0
        
        updateColor()
        updateControl()
    }
    
    func updateColor(){
        var red:CGFloat = 0
        var green:CGFloat = 0
        var blue:CGFloat = 0
        
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor (red: red, green: green, blue: blue, alpha: 1)
        
        colorView.backgroundColor = color
    }
    
    func updateControl(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
}

