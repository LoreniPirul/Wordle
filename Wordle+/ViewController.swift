//
//  ViewController.swift
//  Wordle+
//
//  Created by Loreni Garciapirul - 169073 on 4/14/22.
//

import UIKit

class ViewController: UIViewController {

    var listOfWords = ["IRATE", "PIOUS", "CLOGS", "CLOTH", "OXIDE", "VOICE", "CADEN", "ISAAC", "BRAIN", "FRANK", "COlIN", "ELIJA", "ZESTY"]
    let rowOfWords = 6
    var currentAttemptRow = 0
    let currentLabelNumber = 0
    
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBOutlet var letterLabel1: UILabel!
    @IBOutlet var letterLabel2: UILabel!
    @IBOutlet var letterLabel3: UILabel!
    @IBOutlet var letterLabel4: UILabel!
    @IBOutlet var letterLabel5: UILabel!
    @IBOutlet var letterLabel6: UILabel!
    @IBOutlet var letterLabel7: UILabel!
    @IBOutlet var letterLabel8: UILabel!
    @IBOutlet var letterLabel9: UILabel!
    @IBOutlet var letterLabel10: UILabel!
    @IBOutlet var letterLabel11: UILabel!
    @IBOutlet var letterLabel12: UILabel!
    @IBOutlet var letterLabel13: UILabel!
    @IBOutlet var letterLabel14: UILabel!
    @IBOutlet var letterLabel15: UILabel!
    @IBOutlet var letterLabel16: UILabel!
    @IBOutlet var letterLabel17: UILabel!
    @IBOutlet var letterLabel18: UILabel!
    @IBOutlet var letterLabel19: UILabel!
    @IBOutlet var letterLabel20: UILabel!
    @IBOutlet var letterLabel21: UILabel!
    @IBOutlet var letterLabel22: UILabel!
    @IBOutlet var letterLabel23: UILabel!
    @IBOutlet var letterLabel24: UILabel!
    @IBOutlet var letterLabel25: UILabel!
    @IBOutlet var letterLabel26: UILabel!
    @IBOutlet var letterLabel27: UILabel!
    @IBOutlet var letterLabel28: UILabel!
    @IBOutlet var letterLabel29: UILabel!
    @IBOutlet var letterLabel30: UILabel!
    
    @IBOutlet var backspace: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var index = 0

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        words(string: sender.title(for: .normal))
        index += 1
    }
    
    @IBAction func backspaceButtonPressed(_ sender: Any) {
        index -= 1
        words(string: "")
    }

    
    func words(string: String?) {
        
        if index == 0 {
            letterLabel1.text = string
        } else if index == 1 {
            letterLabel2.text = string
        } else if index == 2 {
            letterLabel3.text = string
        } else if index == 3 {
            letterLabel4.text = string
        } else if index == 4 {
        letterLabel5.text = string
        }
        else if index == 5 {
        letterLabel6.text = string
        } else if index == 6 {
        letterLabel7.text = string
    } else if index == 7 {
        letterLabel8.text = string
    } else if index == 8 {
        letterLabel9.text = string
    
    } else if index == 9 {
        letterLabel10.text = string
    } else if index == 10 {
        letterLabel11.text = string
    } else if index == 11 {
        letterLabel12.text = string
    } else if index == 12 {
    letterLabel13.text = string
    } else if index == 13 {
        letterLabel14.text = string
    } else if index == 14 {
        letterLabel15.text = string
    } else if index == 15 {
        letterLabel16.text = string
    } else if index == 16 {
    letterLabel17.text = string
    }
     else if index == 17 {
        letterLabel18.text = string
    } else if index == 18 {
        letterLabel19.text = string
    } else if index == 19 {
        letterLabel20.text = string
    } else if index == 20 {
    letterLabel21.text = string
    } else if index == 21 {
        letterLabel22.text = string
    } else if index == 22 {
        letterLabel23.text = string
    } else if index == 23 {
        letterLabel24.text = string
    } else if index == 24 {
    letterLabel25.text = string
    } else if index == 25 {
        letterLabel26.text = string
    } else if index == 26 {
        letterLabel27.text = string
    } else if index == 27 {
        letterLabel28.text = string
    } else if index == 28 {
    letterLabel29.text = string
    } else if index == 29 {
        letterLabel30.text = string
    } else if index == 31 {
        letterLabel3.text = string
    
    }
    
    }
}

