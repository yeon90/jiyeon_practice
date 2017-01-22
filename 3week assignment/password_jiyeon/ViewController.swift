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
      var passwordA = passwordInput.text
      var counting = passwordA?.characters.count
      let levelColor = levelView
      let levelDescription = descriptionLabel
        
      let alphaSet = CharacterSet.alphanumerics
      let decimalSet = CharacterSet.decimalDigits
      let letterSet = CharacterSet.letters
        
  //      func passwordCheck () {
  //          for A in (passwordA?.unicodeScalars)!{
  //              if decimalSet.contains(A) {
  //              }
  //              else if alphaSet.contains(A){
                }
              //  else if letterSet.contains(A){
                    
         //       }
        if (counting < 8 && decimalSet.contains(passwordA)){
            levelColor.setTitleColor(UIColor.red, for: .highlighted)
            levelDescription.text = "아주 약한 암호"
        }
        if else ( counting < 8 && alphaSet.contains(passwordA)){
            levelColor.setTitleColor(UIColor.orange, for: .highlighted)
            levelDescription.text = "약한 암호"
        }
    
}
    



    func viewDidLoad() {
        // Do any additional setup after loading the view, typically from a nib.
    }

    func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated.
    }



