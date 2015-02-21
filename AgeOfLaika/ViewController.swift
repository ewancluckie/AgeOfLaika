//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Ewan Cluckie on 21/02/2015.
//  Copyright (c) 2015 Ewan Cluckie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var humanAgeTextField: UITextField!
    @IBOutlet weak var dogYearsConvertedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButton(sender: UIButton) {
        
        let ageInTextField = humanAgeTextField.text.toInt()!
        let conversionConstant = 7
        dogYearsConvertedLabel.text = "You're furry companion is \(ageInTextField * conversionConstant) years old!"
        humanAgeTextField.resignFirstResponder()
        humanAgeTextField.text = ""
    }
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        
        // Get the text field entry and convert to Int
        
        let ageInTextField = humanAgeTextField.text.toInt()!
        
        // Set necessary variables and constants
        
        var ageAsDouble = Double(ageInTextField)
        let youngDogConversionConstant = 10.5
        let oldDogConversionConstant:Double = 4
        
        // Calculate real dog years based on age
        
        if ageAsDouble <= 2 {
            dogYearsConvertedLabel.text = "You're furry companion is \(ageAsDouble * youngDogConversionConstant) years old!"
        }
        
        else {
            dogYearsConvertedLabel.text = "You're furry companion is \((2 * youngDogConversionConstant) + ((ageAsDouble - 2) * oldDogConversionConstant)) years old!"
        }

        // Housekeeping
        
        humanAgeTextField.text = ""
        humanAgeTextField.resignFirstResponder()
    }

}

