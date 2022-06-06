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
    var currentWord = "C.R.A.N.E"

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
            letterCheck()
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
        let letters = currentWord.split(separator: ".")
        let wLetterOne = letters[0]
        let wLetterTwo = letters[1]
        let wLetterThree = letters[2]
        let wLetterFour = letters[3]
        let wLetterFive = letters[4]
        
        if index == 5{
            let gletterOne = letterLabel1.text
            let gletterTwo = letterLabel2.text
            let gletterThree = letterLabel3.text
            let gletterFour = letterLabel4.text
            let gletterFive = letterLabel5.text
            
            let letters = currentWord.split(separator: ".")
            print(letters)
            
            if gletterOne == String(wLetterOne){
                letterLabel1.backgroundColor = UIColor.green
            } else if gletterOne == String(wLetterTwo) {
                letterLabel1.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterThree) {
                letterLabel1.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFour) {
                letterLabel1.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFive) {
                letterLabel1.backgroundColor = UIColor.yellow
            } else if gletterOne != String(wLetterOne)||gletterOne != String(wLetterTwo)||gletterOne != String(wLetterThree)||gletterOne != String(wLetterFour)||gletterOne != String(wLetterFive){
                letterLabel1.backgroundColor = UIColor.darkGray
            }else {
                print("Error")
            }
                
            if gletterTwo == String(wLetterOne){
                letterLabel2.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterTwo) {
                letterLabel2.backgroundColor = UIColor.green
            } else if gletterTwo == String(wLetterThree) {
                letterLabel2.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFour) {
                letterLabel2.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFive) {
                letterLabel2.backgroundColor = UIColor.yellow
            } else {
                letterLabel2.backgroundColor = UIColor.darkGray
            }
                
            if gletterThree == String(wLetterOne){
                letterLabel3.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterTwo) {
                letterLabel3.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterThree) {
                letterLabel3.backgroundColor = UIColor.green
            } else if gletterThree == String(wLetterFour) {
                letterLabel3.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterFive) {
                letterLabel3.backgroundColor = UIColor.yellow
            } else {
                letterLabel3.backgroundColor = UIColor.darkGray
            }
            
            if gletterFour == String(wLetterOne){
                letterLabel4.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterTwo) {
                letterLabel4.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterThree) {
                letterLabel4.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterFour) {
                letterLabel4.backgroundColor = UIColor.green
            } else if gletterFour == String(wLetterFive) {
                letterLabel4.backgroundColor = UIColor.yellow
            } else {
                letterLabel4.backgroundColor = UIColor.darkGray
            }
            
            if gletterFive == String(wLetterOne){
                letterLabel5.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterTwo) {
                letterLabel5.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterThree) {
                letterLabel5.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFour) {
                letterLabel5.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFive) {
                letterLabel5.backgroundColor = UIColor.green
            } else {
                letterLabel5.backgroundColor = UIColor.darkGray
            }
        }
        if index == 11 {
            let gletterOne = letterLabel6.text
            let gletterTwo = letterLabel7.text
            let gletterThree = letterLabel8.text
            let gletterFour = letterLabel9.text
            let gletterFive = letterLabel10.text

            let letters = currentWord.split(separator: ".")
            print(letters)

            if gletterOne == String(wLetterOne){
                letterLabel6.backgroundColor = UIColor.green
            } else if gletterOne == String(wLetterTwo) {
                letterLabel6.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterThree) {
                letterLabel6.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFour) {
                letterLabel6.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFive) {
                letterLabel6.backgroundColor = UIColor.yellow
            } else {
                letterLabel6.backgroundColor = UIColor.darkGray

            if gletterTwo == String(wLetterOne){
                letterLabel7.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterTwo) {
                letterLabel7.backgroundColor = UIColor.green
            } else if gletterTwo == String(wLetterThree) {
                letterLabel7.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFour) {
                letterLabel7.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFive) {
                letterLabel7.backgroundColor = UIColor.yellow
            } else {
                letterLabel7.backgroundColor = UIColor.darkGray
            }

            if gletterThree == String(wLetterOne){
                letterLabel8.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterTwo) {
                letterLabel8.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterThree) {
                letterLabel8.backgroundColor = UIColor.green
            } else if gletterThree == String(wLetterFour) {
                letterLabel8.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterFive) {
                letterLabel8.backgroundColor = UIColor.yellow
            } else {
                letterLabel8.backgroundColor = UIColor.darkGray
            }

            if gletterFour == String(wLetterOne){
                letterLabel9.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterTwo) {
                letterLabel9.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterThree) {
                letterLabel9.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterFour) {
                letterLabel9.backgroundColor = UIColor.green
            } else if gletterFour == String(wLetterFive) {
                letterLabel9.backgroundColor = UIColor.yellow
            } else {
                letterLabel9.backgroundColor = UIColor.darkGray
            }

            if gletterFive == String(wLetterOne){
                letterLabel10.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterTwo) {
                letterLabel10.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterThree) {
                letterLabel10.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFour) {
                letterLabel10.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFive) {
                letterLabel10.backgroundColor = UIColor.green
            } else {
                letterLabel10.backgroundColor = UIColor.darkGray
            }
        }
        }
        if index == 17 {
            let gletterOne = letterLabel11.text
            let gletterTwo = letterLabel12.text
            let gletterThree = letterLabel13.text
            let gletterFour = letterLabel14.text
            let gletterFive = letterLabel15.text

            let letters = currentWord.split(separator: ".")
            print(letters)

            if gletterOne == String(wLetterOne){
                letterLabel11.backgroundColor = UIColor.green
            } else if gletterOne == String(wLetterTwo) {
                letterLabel11.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterThree) {
                letterLabel11.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFour) {
                letterLabel11.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFive) {
                letterLabel11.backgroundColor = UIColor.yellow
            } else {
                letterLabel11.backgroundColor = UIColor.darkGray

            if gletterTwo == String(wLetterOne){
                letterLabel12.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterTwo) {
                letterLabel12.backgroundColor = UIColor.green
            } else if gletterTwo == String(wLetterThree) {
                letterLabel12.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFour) {
                letterLabel12.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFive) {
                letterLabel12.backgroundColor = UIColor.yellow
            } else {
                letterLabel12.backgroundColor = UIColor.darkGray
            }

            if gletterThree == String(wLetterOne){
                letterLabel13.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterTwo) {
                letterLabel13.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterThree) {
                letterLabel13.backgroundColor = UIColor.green
            } else if gletterThree == String(wLetterFour) {
                letterLabel13.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterFive) {
                letterLabel13.backgroundColor = UIColor.yellow
            } else {
                letterLabel3.backgroundColor = UIColor.darkGray
            }

            if gletterFour == String(wLetterOne){
                letterLabel14.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterTwo) {
                letterLabel14.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterThree) {
                letterLabel14.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterFour) {
                letterLabel14.backgroundColor = UIColor.green
            } else if gletterFour == String(wLetterFive) {
                letterLabel14.backgroundColor = UIColor.yellow
            } else {
                letterLabel14.backgroundColor = UIColor.darkGray
            }

            if gletterFive == String(wLetterOne){
                letterLabel15.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterTwo) {
                letterLabel15.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterThree) {
                letterLabel15.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFour) {
                letterLabel15.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFive) {
                letterLabel15.backgroundColor = UIColor.green
            } else {
                letterLabel15.backgroundColor = UIColor.darkGray
            }
            }
        }
    }
}
