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
     print("Level1")
    }
    else if ( counting < 8 && alphaSet.contains(passwordA)){
    print ("Level2")
    }

        }

    }
        
}

    
    으앙으앙으앙으아아앙

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

