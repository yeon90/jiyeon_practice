//
//  ViewController.swift
//  SocialNumber_w4
//
//  Created by Ji yeon Park on 2017. 1. 30..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit
var CGFrameForLabel = CGRect(x: 10, y: 50, width: 100, height: 20)
var labelView = UILabel(frame: CGFrameForLabel)
var CGFrameForTextField = CGRect(x: 10, y: 80, width: 300, height: 20)
var textFieldView = UITextField(frame: CGFrameForTextField)
var CGFrameForView = CGRect(x: 10, y: 110, width: 250, height: 5)
var myUIView = UIView(frame: CGFrameForView)
var CGFrameForButton = CGRect(x: 10, y: 125, width: 150, height: 30)
var myButton = UIButton(frame: CGFrameForButton)
let C = [2,3,4,5,6,7,8,9,2,3,4,5]
var S = [9,0,0,6,1,0,2,0,1,7,1,3,1]
// 어떻게 텍스트필드의 입력값을 array로 바꾸는지 모르겠음.ㅠㅠㅠㅠ

let N = (C[0]*S[0]+C[1]*S[1]+C[2]*S[2]+C[3]*S[3]+C[4]*S[4]+C[5]*S[5]+C[6]*S[6]+C[7]*S[7]+C[8]*S[8]+C[9]*S[9]+C[10]*S[10]+C[11]*S[11]+C[12]*S[12])%11
let V = (11-N)%10

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(labelView)
        view.addSubview(textFieldView)
        view.addSubview(myUIView)
        view.addSubview(myButton)
        
        labelView.text = "주민등록번호"
        labelView.textColor = UIColor.black
        labelView.textAlignment = NSTextAlignment.left
        textFieldView.placeholder = "주민등록번호를 입력해주세요"
       // textFieldView.textColor = UIColor.gray
        textFieldView.font = UIFont.systemFont(ofSize: 15)
        textFieldView.borderRect(forBounds: CGFrameForTextField)
      
        myUIView.backgroundColor = UIColor.red
        myButton.setTitle("검사", for: UIControlState.normal)
        myButton.backgroundColor = UIColor.darkGray
        myButton.isEnabled = true
    }
    
    func checkSocialNumber (){
        if V==S[13] {
            myUIView.backgroundColor = UIColor.blue}
        else {
            myUIView.backgroundColor = UIColor.red}
    }
    
//    func ButtonTouced () {
//        myButton.addTarget(self, action : checkSocialNumber, for: ButtonTouced())
//    }
// 버튼 action 연결을 못하겠음 ㅠㅠ 
//    func changeToArray () {
//        for characters in myTextField.
//    }
    
    
   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

