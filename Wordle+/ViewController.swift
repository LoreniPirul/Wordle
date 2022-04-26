//
//  ViewController.swift
//  Wordle+
//
//  Created by Loreni Garciapirul - 169073 on 4/14/22.
//

import UIKit

class ViewController: UIViewController {

    var listOfWords = ["IRATE", "PIOUS", "CLOGS", "CLOTH", "OXIDE", "VOICE", "CADEN", "ISAAC", "LOREN", "FRANK", "COlIN", "ELIJA"]
    let rowOfWords = 6
    var currentAttemptRow = 0
    let currentLabelNumber = 0
    
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBOutlet var letterLabels: [UILabel]!
    @IBOutlet var letterLabel1: UILabel!
    @IBOutlet var letterLabel2: UILabel!
    @IBOutlet var letterLabel3: UILabel!
    @IBOutlet var letterLabel4: UILabel!
    @IBOutlet var letterLabel5: UILabel!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        var index = 0
        let labelDictionaryRowOne: [UILabel: Int] = [letterLabel1: 0, letterLabel2: 1, letterLabel3: 2, letterLabel4: 3, letterLabel5: 4 ]

        let letterString = sender.title(for: .normal)
        let currentLabelPressed = labelDictionaryRowOne[key: index]
        
        index += 1
    }

}

