//
//  ViewController.swift
//  password_jiyeon
//
//  Created by Ji yeon Park on 2017. 1. 21..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var levelView: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func passwordValidator(password:String) -> Int {
  
     // var passwordA = passwordInput.text
     // var counting = passwordA?.characters.count
     // let levelColor = levelView
     // let levelDescription = descriptionLabel
        
      var decimalSet = CharacterSet.decimalDigit
      var letterSet = CharacterSet.letters
      var alphaSet = CharacterSet.alphanumerics.inverted
        
      var d = 0
      var l = 0
      var a = 0
        
        func passwordCheck () {
            for characters in (passwordA.unicodeScalars){
                if decimalSet.contains(characters) {
                d += 1 }
                else if alphaSet.contains(A){
                l += 1 }
                else if letterSet.contains(A){
                a += 1 }
            }
        var total = d + l + a
                
            if ( total < 8 && d >= 1 && l == 0 && a == 0 ) {
                 return 1
            }
            else if ( total < 8 && d == 0 && l >= 1 && a == 0 ) {
                return 2
            }
            else if (total >= 8 && d >= 1 && l >= 1 && a == 0) {
                return 4
            }
            else if (total >= 8 && d >= 1 && l >= 1 && a >= 1) {
                return 5
            }
            else {
                return 3
            }
            
        }
    }
            func checkResult (valid : Int) -> (levelword : String , levelColor : UIColor) {
                var levelWord = ""
                var levelColor = UIColor.black
                switch valid {
                case 1 :
                    levelWord = "아주 약한 암호"
                    levelColor = UIColor.red
                case 2 :
                    levelWord = "약한 암호"
                    levelColor = UIColor.orange
                case 3 :
                    levelWord = "보통 암호"
                    levelColor = UIColor.yellow
                case 4 :
                    levelWord = "강한 암호"
                    levelColor = UIColor.blue
                case 5 :
                    levelWord = "아주 강한 암호"
                    levelColor = UIColor.green
                default :
                    levelWord = "암호를 입력하세요"
                }
                return (levelWord, levelColor)
        }
        
        
}
