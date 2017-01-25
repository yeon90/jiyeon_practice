//
//  ViewController.swift
//  solitaire_0125
//
//  Created by Ji yeon Park on 2017. 1. 25..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var shuffleCardA = SolitaireDeck()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        shuffleCardA.shuffleCards()
        
        var x = 0
        var y = 0

        // let view = UIImageView(frame: CGframe)
        for i in 0...6 {
            x = 140 * i + 26
            y = 60
            for j in 0...i {
                y = y + 40
            
                let valueS = shuffleCardA.stackArray[i][j]
                var CGframe = CGRect(x: x, y: y, width: 130, height: 150)
                
                var imageView = UIImageView(frame: CGframe)
                imageView.image = UIImage(named: String(valueS))
                view.addSubview(imageView)
            }
        }
        
        for i in 0...23 {
            x = i*24 + 26
            y = 500
            let valueR = shuffleCardA.restArray[i]
            var CGframe = CGRect(x: x, y: y, width: 130, height: 150)
            var imageView = UIImageView(frame: CGframe)
            imageView.image = UIImage(named: String(valueR))
            view.addSubview(imageView)
        }

    
    }
    
    
}


