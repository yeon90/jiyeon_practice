//
//  CardViewController.swift
//  RandomCard
//
//  Created by Danb on 2017. 1. 19..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

enum CardFace : UInt32{
    case diamond
    case heart
    case spade
    case clover
}

//var arrayS = Array<CardFace>()

class CardViewController: UIViewController {

    @IBOutlet weak var shapeLabel: UILabel!
  
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var cardImageView: UIImageView!
    

    var result : (CardFace, Int)=(.clover,0)
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    
        shapeLabel.text = String(describing: result.0.rawValue)
        numberLabel.text = String(describing: result.1)
     
        var r0 = String(describing: result.0)
        var r2 = String(result.0.rawValue.characters.first!)
        var r1 = String(result.1)
        
       
        
        func join(r00 : String, r11 : String) -> String {
            return r00 + r11
        }
        
        var imageName = String(join(r00: r2, r11 : r1))
        
        
        cardImageView.image = UIImage(named: imageName!)

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
