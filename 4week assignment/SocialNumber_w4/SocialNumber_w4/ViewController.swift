//
//  ViewController.swift
//  SocialNumber_w4
//
//  Created by Ji yeon Park on 2017. 1. 30..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit
var myLabel = UILabel()
var myTextField = UITextField()
var myUIView = UIView()
var frame = CGRect(x: 10, y: 100, width: 80, height: 5)
var myButton = UIButton()
let C = [2,3,4,5,6,7,8,9,2,3,4,5]
var S = [9,0,0,6,1,0,2,0,1,7,1,3,1]
// 어떻게 텍스트필드의 입력값을 array로 바꾸는지 모르겠음.ㅠㅠㅠㅠ

let N = (C[0]*S[0]+C[1]*S[1]+C[2]*S[2]+C[3]*S[3]+C[4]*S[4]+C[5]*S[5]+C[6]*S[6]+C[7]*S[7]+C[8]*S[8]+C[9]*S[9]+C[10]*S[10]+C[11]*S[11]+C[12]*S[12])%11
let V = (11-N)%10

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = "주민등록번호"
        myLabel.textColor = UIColor.black
        myLabel.textAlignment = NSTextAlignment.left
//      myLabel.font = UIFont.systemFontSize(ofSize: 20)
        myTextField.placeholder = "주민등록번호를 입력해주세요"
        myUIView.alignmentRect(forFrame: frame)
        myButton.setTitle("검사", for: UIControlState.normal)
        
// label, textfield,View, button을 인터페이스빌더 없이 어떻게 화면에 출력하는지 모르겠음.ㅠㅠㅠㅠ
        
    }

//    func changeToArray () {
//        for characters in myTextField.
//    }
    
    func checkSocialNumber (){
        if V==S[13] {
        myUIView.backgroundColor = UIColor.blue}
        else {
        myUIView.backgroundColor = UIColor.red}
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

