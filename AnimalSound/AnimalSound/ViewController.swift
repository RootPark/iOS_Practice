//
//  ViewController.swift
//  AnimalSound
//
//  Created by 박근원 on 2022/04/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoundLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func catButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Meow!"
        let sound = SimpleSound(named: "meow")
        sound.play()
    }
    
    
    @IBAction func dogButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Woof!"
        let sound = SimpleSound(named: "woof")
        sound.play()
    }
    
    @IBAction func cowButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Moo!"
        let sound = SimpleSound(named: "moo")
        sound.play()
    }
}

