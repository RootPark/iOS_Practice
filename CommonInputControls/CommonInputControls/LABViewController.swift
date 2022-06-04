//
//  LABViewController.swift
//  CommonInputControls
//
//  Created by 박근원 on 2022/04/28.
//

import UIKit

class LABViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        if let inputText = textField.text{
            textLabel.text = inputText
        }
        textField.resignFirstResponder()
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        textLabel.text = ""
        textField.resignFirstResponder()
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
