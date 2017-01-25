//
//  ViewController.swift
//  solitaire_practice
//
//  Created by Ji yeon Park on 2017. 1. 23..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    var CGframe = CGRect(x: 0, y: 0, width: 130, height: 150)
  
    override func viewWillAppear(_ animated: Bool) {
        
    
    let view = UIImageView(frame: CGframe)
      //  var x = view.CGframe.origin.x
      //  var y = view.CGframe.origin.y
   
   // for i in 0...6 {
   //     x = CGFloat(140 * i + 26){
   
   // for _ in 0...6 {
   //     y = y + 40}}
        
    var imageView = UIImageView(frame: CGframe)
    imageView.image = UIImage(named: "sA")
    view.addSubview(imageView)
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

