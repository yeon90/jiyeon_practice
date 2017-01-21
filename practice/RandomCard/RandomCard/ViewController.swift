//
//  ViewController.swift
//  RandomCard
//
//  Created by Danb on 2017. 1. 19..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var randomS = CardFace.clover
    var randomN = 0
    
    func shuffleDeck() -> (face:CardFace, number:Int) {
        randomS = CardFace(rawValue: arc4random_uniform(CardFace.clover.rawValue+1))!
        randomN = Int(arc4random_uniform(13))
        return (randomS,randomN+1)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cardVC" {
            let RandomView : CardViewController = segue.destination as! CardViewController
            RandomView.result = shuffleDeck()
        }
    }
    
    //let cardConnect : CardViewController = storybo

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



