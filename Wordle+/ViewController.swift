//
//  ViewController.swift
//  Wordle+
//
//  Created by Loreni Garciapirul - 169073 on 4/14/22.
//

import UIKit

class ViewController: UIViewController {

//    var currentGuesedLetter =
    
    
    var listOfWords = ["IRATE", "PIOUS", "CLOGS", "CLOTH", "OXIDE", "VOICE", "CADEN", "ISAAC", "BRAIN", "FRANK", "COlIN", "ELIJA", "ZESTY"]
    let testWord = "IRATE"
    var currentWord = "CRANE"

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
    @IBOutlet weak var enter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var index = 0

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        guard index < 35 else {
            return
        }
        if indexCheck(letterButton: sender) == true {
            words(string: sender.title(for: .normal))
            index += 1
            print(index)
        }
    }
    
    @IBAction func backspaceButtonPressed(_ sender: Any) {
        index -= 1
        words(string: "")
    }
    
    
    @IBAction func enterButtonPressed(_ sender: UIButton?) {
        if index == 5 || index == 11 || index == 17 || index == 23 || index == 29 || index == 35 {
            //run letter check
            index += 1
            letterButtons.forEach { $0.isUserInteractionEnabled = true }
        }
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
            //Break Point
        } else if index == 6 {
            letterLabel6.text = string
        } else if index == 7 {
            letterLabel7.text = string
        } else if index == 8 {
            letterLabel8.text = string
        } else if index == 9 {
            letterLabel9.text = string
        } else if index == 10 {
            letterLabel10.text = string
            //Break Point
        } else if index == 12 {
            letterLabel11.text = string
        } else if index == 13 {
            letterLabel12.text = string
        } else if index == 14 {
            letterLabel13.text = string
        } else if index == 15 {
            letterLabel14.text = string
        } else if index == 16 {
            letterLabel15.text = string
            //Break Point
        } else if index == 18 {
            letterLabel16.text = string
        } else if index == 19 {
            letterLabel17.text = string
        } else if index == 20 {
            letterLabel18.text = string
        } else if index == 21 {
            letterLabel19.text = string
        } else if index == 22 {
            letterLabel20.text = string
            //Break Point
        } else if index == 24 {
            letterLabel21.text = string
        } else if index == 25 {
            letterLabel22.text = string
        } else if index == 26 {
            letterLabel23.text = string
        } else if index == 27 {
            letterLabel24.text = string
        } else if index == 28 {
            letterLabel25.text = string
            //Break Point
        } else if index == 30 {
            letterLabel26.text = string
        } else if index == 31 {
            letterLabel27.text = string
        } else if index == 32 {
            letterLabel28.text = string
        } else if index == 33 {
            letterLabel29.text = string
        } else if index == 34 {
            letterLabel30.text = string
        }
    }
    
    func indexCheck(letterButton: UIButton!) -> Bool {
        if index == 5 || index == 11 || index == 17 || index == 23 || index == 29 || index == 35 {
            letterButtons.forEach { $0.isUserInteractionEnabled = false }
        }
        return letterButton.isUserInteractionEnabled
    }
    
    func letterCheck() {
        if enter.isTouchInside == true {
            if index == 4{
                let gletterOne = letterLabel1.text
                let gletterTwo = letterLabel2.text
                let gletterThree = letterLabel3.text
                let gletterFour = letterLabel4.text
                let gletterFive = letterLabel5.text
                
                let letters = currentWord.split(separator: ".")
                print(letters)

                let wLetterOne = letters[0]
                let wLetterTwo = letters[1]
                let wLetterThree = letters[2]
                let wLetterFour = letters[3]
                let wLetterFive = letters[4]
                
                if gletterOne == String(wLetterOne){
                    //Turns Background  green
                } else if gletterOne == String(wLetterTwo) {
                    //Turns Background Yellow
                } else if gletterOne == String(wLetterThree) {
                    //Yellow
                } else if gletterOne == String(wLetterFour) {
                    //Yellow
                } else if gletterOne == String(wLetterFive) {
                    //Yellow
                } else {
                    //Grey
                }
             
                if gletterTwo == String(wLetterOne){
                    //Turns Background  Yellow
                } else if gletterTwo == String(wLetterTwo) {
                    //Turns Background Green
                } else if gletterTwo == String(wLetterThree) {
                    //Yellow
                } else if gletterTwo == String(wLetterFour) {
                    //Yellow
                } else if gletterTwo == String(wLetterFive) {
                    //Yellow
                } else {
                    //Grey
                }
                
                if gletterThree == String(wLetterOne){
                    //Turns Background  Yellow
                } else if gletterThree == String(wLetterTwo) {
                    //Turns Background Yellow
                } else if gletterThree == String(wLetterThree) {
                    //Turns Background Green
                } else if gletterThree == String(wLetterFour) {
                    //Yellow
                } else if gletterThree == String(wLetterFive) {
                    //Yellow
                } else {
                    //Grey
                }
            }
        }
    }
}

