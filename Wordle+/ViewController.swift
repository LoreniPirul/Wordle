//
//  ViewController.swift
//  Wordle+
//
//  Created by Loreni Garciapirul - 169073 on 4/14/22.
//

import UIKit

class ViewController: UIViewController {

    var listOfWords = ["I.R.A.T.E", "P.I.O.U.S", "C.L.O.G.S", "C.L.O.T.H", "O.X.I.D.E", "V.O.I.C.E", "C.A.D.E.N", "I.S.A.A.C", "B.R.A.I.N", "F.R.A.N.K", "C.O.l.I.N", "E.L.I.J.A", "Z.E.S.T.Y"]
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
    @IBOutlet var enter: UIButton!
    
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
            isWordReal()
            letterCheck()
            winCheck()
            loseCheck()
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
            } else if gletterTwo != String(wLetterOne) || gletterTwo != String(wLetterTwo) || gletterTwo != String(wLetterThree) || gletterTwo != String(wLetterFour) || gletterTwo != String(wLetterFive) {
                letterLabel2.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterThree != String(wLetterOne) || gletterThree != String(wLetterTwo) || gletterThree != String(wLetterThree) || gletterThree != String(wLetterFour) || gletterThree != String(wLetterFive) {
                letterLabel3.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterFour != String(wLetterOne) || gletterFour != String(wLetterTwo) || gletterFour != String(wLetterThree) || gletterFour != String(wLetterFour) || gletterFour != String(wLetterFive) {
                letterLabel4.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterFive != String(wLetterOne) || gletterFive != String(wLetterTwo) || gletterFive != String(wLetterThree) || gletterFive != String(wLetterFour) || gletterFive != String(wLetterFive) {
                letterLabel5.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterOne != String(wLetterOne)||gletterOne != String(wLetterTwo)||gletterOne != String(wLetterThree)||gletterOne != String(wLetterFour)||gletterOne != String(wLetterFive){
                letterLabel6.backgroundColor = UIColor.darkGray
            }else {
                print("Error")
            }

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
            } else if gletterTwo != String(wLetterOne) || gletterTwo != String(wLetterTwo) || gletterTwo != String(wLetterThree) || gletterTwo != String(wLetterFour) || gletterTwo != String(wLetterFive) {
                letterLabel7.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterTwo != String(wLetterOne) || gletterTwo != String(wLetterTwo) || gletterTwo != String(wLetterThree) || gletterTwo != String(wLetterFour) || gletterTwo != String(wLetterFive) {
                letterLabel8.backgroundColor = UIColor.darkGray
            } else if gletterThree != String(wLetterOne) || gletterThree != String(wLetterTwo) || gletterThree != String(wLetterThree) || gletterThree != String(wLetterFour) || gletterThree != String(wLetterFive) {
                letterLabel8.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterFour != String(wLetterOne) || gletterFour != String(wLetterTwo) || gletterFour != String(wLetterThree) || gletterFour != String(wLetterFour) || gletterFour != String(wLetterFive) {
                letterLabel9.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterFive != String(wLetterOne) || gletterFive != String(wLetterTwo) || gletterFive != String(wLetterThree) || gletterFive != String(wLetterFour) || gletterFive != String(wLetterFive) {
                letterLabel10.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterOne != String(wLetterOne)||gletterOne != String(wLetterTwo)||gletterOne != String(wLetterThree)||gletterOne != String(wLetterFour)||gletterOne != String(wLetterFive){
                letterLabel11.backgroundColor = UIColor.darkGray
            }else {
                print("Error")
            }
            
            if gletterTwo == String(wLetterOne) {
                letterLabel12.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterTwo) {
                letterLabel12.backgroundColor = UIColor.green
            } else if gletterTwo == String(wLetterThree) {
                letterLabel12.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFour) {
                letterLabel12.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFive) {
                letterLabel12.backgroundColor = UIColor.yellow
            } else if gletterTwo != String(wLetterOne) || gletterTwo != String(wLetterTwo) || gletterTwo != String(wLetterThree) || gletterTwo != String(wLetterFour) || gletterTwo != String(wLetterFive) {
                letterLabel12.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterThree != String(wLetterOne) || gletterThree != String(wLetterTwo) || gletterThree != String(wLetterThree) || gletterThree != String(wLetterFour) || gletterThree != String(wLetterFive) {
                letterLabel13.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterFour != String(wLetterOne) || gletterFour != String(wLetterTwo) || gletterFour != String(wLetterThree) || gletterFour != String(wLetterFour) || gletterFour != String(wLetterFive) {
                letterLabel14.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
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
            } else if gletterFive != String(wLetterOne) || gletterFive != String(wLetterTwo) || gletterFive != String(wLetterThree) || gletterFive != String(wLetterFour) || gletterFive != String(wLetterFive) {
                letterLabel15.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }
        }
        if index == 23 {
            let gletterOne = letterLabel16.text
            let gletterTwo = letterLabel17.text
            let gletterThree = letterLabel18.text
            let gletterFour = letterLabel19.text
            let gletterFive = letterLabel20.text
            
            let letters = currentWord.split(separator: ".")
            print(letters)

            if gletterOne == String(wLetterOne){
                letterLabel16.backgroundColor = UIColor.green
            } else if gletterOne == String(wLetterTwo) {
                letterLabel16.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterThree) {
                letterLabel16.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFour) {
                letterLabel16.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFive) {
                letterLabel16.backgroundColor = UIColor.yellow
            } else if gletterOne != String(wLetterOne)||gletterOne != String(wLetterTwo)||gletterOne != String(wLetterThree)||gletterOne != String(wLetterFour)||gletterOne != String(wLetterFive){
                letterLabel16.backgroundColor = UIColor.darkGray
            }else {
                print("Error")
            }
            
            if gletterTwo == String(wLetterOne) {
                letterLabel17.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterTwo) {
                letterLabel17.backgroundColor = UIColor.green
            } else if gletterTwo == String(wLetterThree) {
                letterLabel17.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFour) {
                letterLabel17.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFive) {
                letterLabel17.backgroundColor = UIColor.yellow
            } else if gletterTwo != String(wLetterOne) || gletterTwo != String(wLetterTwo) || gletterTwo != String(wLetterThree) || gletterTwo != String(wLetterFour) || gletterTwo != String(wLetterFive) {
                letterLabel17.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }
            
            if gletterThree == String(wLetterOne){
                letterLabel18.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterTwo) {
                letterLabel18.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterThree) {
                letterLabel18.backgroundColor = UIColor.green
            } else if gletterThree == String(wLetterFour) {
                letterLabel18.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterFive) {
                letterLabel18.backgroundColor = UIColor.yellow
            } else if gletterThree != String(wLetterOne) || gletterThree != String(wLetterTwo) || gletterThree != String(wLetterThree) || gletterThree != String(wLetterFour) || gletterThree != String(wLetterFive) {
                letterLabel18.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }

            if gletterFour == String(wLetterOne){
                letterLabel19.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterTwo) {
                letterLabel19.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterThree) {
                letterLabel19.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterFour) {
                letterLabel19.backgroundColor = UIColor.green
            } else if gletterFour == String(wLetterFive) {
                letterLabel19.backgroundColor = UIColor.yellow
            } else if gletterFour != String(wLetterOne) || gletterFour != String(wLetterTwo) || gletterFour != String(wLetterThree) || gletterFour != String(wLetterFour) || gletterFour != String(wLetterFive) {
                letterLabel19.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }

            if gletterFive == String(wLetterOne){
                letterLabel20.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterTwo) {
                letterLabel20.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterThree) {
                letterLabel20.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFour) {
                letterLabel20.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFive) {
                letterLabel20.backgroundColor = UIColor.green
            } else if gletterFive != String(wLetterOne) || gletterFive != String(wLetterTwo) || gletterFive != String(wLetterThree) || gletterFive != String(wLetterFour) || gletterFive != String(wLetterFive) {
                letterLabel20.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }
        }
        if index == 29 {
            let gletterOne = letterLabel21.text
            let gletterTwo = letterLabel22.text
            let gletterThree = letterLabel23.text
            let gletterFour = letterLabel24.text
            let gletterFive = letterLabel25.text
            
            let letters = currentWord.split(separator: ".")
            print(letters)

            if gletterOne == String(wLetterOne){
                letterLabel21.backgroundColor = UIColor.green
            } else if gletterOne == String(wLetterTwo) {
                letterLabel21.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterThree) {
                letterLabel21.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFour) {
                letterLabel21.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFive) {
                letterLabel21.backgroundColor = UIColor.yellow
            } else if gletterOne != String(wLetterOne)||gletterOne != String(wLetterTwo)||gletterOne != String(wLetterThree)||gletterOne != String(wLetterFour)||gletterOne != String(wLetterFive){
                letterLabel21.backgroundColor = UIColor.darkGray
            }else {
                print("Error")
            }
            
            if gletterTwo == String(wLetterOne) {
                letterLabel22.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterTwo) {
                letterLabel22.backgroundColor = UIColor.green
            } else if gletterTwo == String(wLetterThree) {
                letterLabel22.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFour) {
                letterLabel22.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFive) {
                letterLabel22.backgroundColor = UIColor.yellow
            } else if gletterTwo != String(wLetterOne) || gletterTwo != String(wLetterTwo) || gletterTwo != String(wLetterThree) || gletterTwo != String(wLetterFour) || gletterTwo != String(wLetterFive) {
                letterLabel22.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }
            
            if gletterThree == String(wLetterOne){
                letterLabel23.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterTwo) {
                letterLabel23.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterThree) {
                letterLabel23.backgroundColor = UIColor.green
            } else if gletterThree == String(wLetterFour) {
                letterLabel23.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterFive) {
                letterLabel23.backgroundColor = UIColor.yellow
            } else if gletterThree != String(wLetterOne) || gletterThree != String(wLetterTwo) || gletterThree != String(wLetterThree) || gletterThree != String(wLetterFour) || gletterThree != String(wLetterFive) {
                letterLabel23.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }

            if gletterFour == String(wLetterOne){
                letterLabel24.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterTwo) {
                letterLabel24.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterThree) {
                letterLabel24.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterFour) {
                letterLabel24.backgroundColor = UIColor.green
            } else if gletterFour == String(wLetterFive) {
                letterLabel24.backgroundColor = UIColor.yellow
            } else if gletterFour != String(wLetterOne) || gletterFour != String(wLetterTwo) || gletterFour != String(wLetterThree) || gletterFour != String(wLetterFour) || gletterFour != String(wLetterFive) {
                letterLabel24.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }

            if gletterFive == String(wLetterOne){
                letterLabel25.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterTwo) {
                letterLabel25.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterThree) {
                letterLabel25.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFour) {
                letterLabel25.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFive) {
                letterLabel25.backgroundColor = UIColor.green
            } else if gletterFive != String(wLetterOne) || gletterFive != String(wLetterTwo) || gletterFive != String(wLetterThree) || gletterFive != String(wLetterFour) || gletterFive != String(wLetterFive) {
                letterLabel25.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }
        }
        if index == 35 {
            let gletterOne = letterLabel26.text
            let gletterTwo = letterLabel27.text
            let gletterThree = letterLabel28.text
            let gletterFour = letterLabel29.text
            let gletterFive = letterLabel30.text
            
            let letters = currentWord.split(separator: ".")
            print(letters)

            if gletterOne == String(wLetterOne){
                letterLabel26.backgroundColor = UIColor.green
            } else if gletterOne == String(wLetterTwo) {
                letterLabel26.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterThree) {
                letterLabel26.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFour) {
                letterLabel26.backgroundColor = UIColor.yellow
            } else if gletterOne == String(wLetterFive) {
                letterLabel26.backgroundColor = UIColor.yellow
            } else if gletterOne != String(wLetterOne)||gletterOne != String(wLetterTwo)||gletterOne != String(wLetterThree)||gletterOne != String(wLetterFour)||gletterOne != String(wLetterFive){
                letterLabel26.backgroundColor = UIColor.darkGray
            }else {
                print("Error")
            }
            
            if gletterTwo == String(wLetterOne) {
                letterLabel27.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterTwo) {
                letterLabel27.backgroundColor = UIColor.green
            } else if gletterTwo == String(wLetterThree) {
                letterLabel27.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFour) {
                letterLabel27.backgroundColor = UIColor.yellow
            } else if gletterTwo == String(wLetterFive) {
                letterLabel27.backgroundColor = UIColor.yellow
            } else if gletterTwo != String(wLetterOne) || gletterTwo != String(wLetterTwo) || gletterTwo != String(wLetterThree) || gletterTwo != String(wLetterFour) || gletterTwo != String(wLetterFive) {
                letterLabel27.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }
            
            if gletterThree == String(wLetterOne){
                letterLabel28.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterTwo) {
                letterLabel28.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterThree) {
                letterLabel28.backgroundColor = UIColor.green
            } else if gletterThree == String(wLetterFour) {
                letterLabel28.backgroundColor = UIColor.yellow
            } else if gletterThree == String(wLetterFive) {
                letterLabel28.backgroundColor = UIColor.yellow
            } else if gletterThree != String(wLetterOne) || gletterThree != String(wLetterTwo) || gletterThree != String(wLetterThree) || gletterThree != String(wLetterFour) || gletterThree != String(wLetterFive) {
                letterLabel28.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }

            if gletterFour == String(wLetterOne){
                letterLabel29.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterTwo) {
                letterLabel29.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterThree) {
                letterLabel29.backgroundColor = UIColor.yellow
            } else if gletterFour == String(wLetterFour) {
                letterLabel29.backgroundColor = UIColor.green
            } else if gletterFour == String(wLetterFive) {
                letterLabel29.backgroundColor = UIColor.yellow
            } else if gletterFour != String(wLetterOne) || gletterFour != String(wLetterTwo) || gletterFour != String(wLetterThree) || gletterFour != String(wLetterFour) || gletterFour != String(wLetterFive) {
                letterLabel29.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }

            if gletterFive == String(wLetterOne){
                letterLabel30.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterTwo) {
                letterLabel30.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterThree) {
                letterLabel30.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFour) {
                letterLabel30.backgroundColor = UIColor.yellow
            } else if gletterFive == String(wLetterFive) {
                letterLabel30.backgroundColor = UIColor.green
            } else if gletterFive != String(wLetterOne) || gletterFive != String(wLetterTwo) || gletterFive != String(wLetterThree) || gletterFive != String(wLetterFour) || gletterFive != String(wLetterFive) {
                letterLabel30.backgroundColor = UIColor.darkGray
            } else {
                print("Error")
            }
        }
    }
    
    func winCheck() {
        if letterLabel1.backgroundColor == .green && letterLabel2.backgroundColor == .green && letterLabel3.backgroundColor == .green && letterLabel4.backgroundColor == .green && letterLabel5.backgroundColor == .green || letterLabel6.backgroundColor == .green && letterLabel7.backgroundColor == .green && letterLabel8.backgroundColor == .green && letterLabel9.backgroundColor == .green && letterLabel10.backgroundColor == .green || letterLabel11.backgroundColor == .green && letterLabel12.backgroundColor == .green && letterLabel13.backgroundColor == .green && letterLabel14.backgroundColor == .green && letterLabel15.backgroundColor == .green || letterLabel16.backgroundColor == .green && letterLabel17.backgroundColor == .green && letterLabel18.backgroundColor == .green && letterLabel19.backgroundColor == .green && letterLabel20.backgroundColor == .green || letterLabel21.backgroundColor == .green && letterLabel22.backgroundColor == .green && letterLabel23.backgroundColor == .green && letterLabel24.backgroundColor == .green && letterLabel25.backgroundColor == .green || letterLabel26.backgroundColor == .green && letterLabel27.backgroundColor == .green && letterLabel28.backgroundColor == .green && letterLabel29.backgroundColor == .green && letterLabel30.backgroundColor == .green {
            Win()
        }
    }
    
    @IBOutlet weak var winLabel: UILabel!
    
    func Win() {
        backspace.isUserInteractionEnabled = false
        enter.isUserInteractionEnabled = false
        letterButtons.forEach { $0.isUserInteractionEnabled = false }
        winLabel.text = "Win!!"
    }
    
    func loseCheck() {
        if index == 35 && letterLabel25.backgroundColor == .yellow || letterLabel26.backgroundColor == .yellow || letterLabel27.backgroundColor == .yellow || letterLabel28.backgroundColor == .yellow || letterLabel29.backgroundColor == .yellow || letterLabel30.backgroundColor == .yellow {
            Lose()
        }
    }
    
    func Lose() {
        winLabel.text = "Loss :("
        letterButtons.forEach {$0.isUserInteractionEnabled = false}
        backspace.isUserInteractionEnabled = false
        enter.isUserInteractionEnabled = false
    }
    
    func isWordReal(){
        let letters = currentWord.split(separator: ".")
        let word: String = String(letters[0] + letters[1] + letters[2] + letters[3] + letters[4])
        let result = isReal(word: word)
        if result == true {
            print("Its all good.")
        } else {
            winLabel.text = "This is not a real word"
            enter.isUserInteractionEnabled = false
        }
    }
    
    
    func isReal(word: String) -> Bool  {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        return misspelledRange.location == NSNotFound
    }
}
