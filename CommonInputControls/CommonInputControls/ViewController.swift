//
//  ViewController.swift
//  CommonInputControls
//
//  Created by 박근원 on 2022/04/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button.addTarget(self, action: #selector(buttontapped(_:)), for: .touchUpInside)
    }

    @IBAction func buttontapped(_ sender: Any) {
        print("Button was tapped!")
        
        if toggle.isOn {
            print("The switch is On")
        }
        else{
            print("The switch is OFF")
        }
        
        print("The slider is set to \(slider.value) ")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("The switch is On")
        }
        else{
            print("The switch is OFF")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        
        if let text = sender.text{
            print(text)
        }
    }
    
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}

