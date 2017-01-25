//
//  ViewController.swift
//  solitaire
//
//  Created by Ji yeon Park on 2017. 1. 23..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
// viewController는 view를 가지고 있다.
//빈껍데기뷰 만들기 ( 인스턴스만들기) - code로 뷰만들때는 frame을 쓴다.
//생성자는 클래스마다 다름 (UIKit Catalog 참고)
        //var subview = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
        //subview.backgroundColor = UIColor.cyan
        //self.view.addSubview(subview)
        //self.view.backgroundColor = UIColor.darkGray
// insertSubview : 겹쳤을 때 중간에 넣으려면...
// UIImage는 보여주는 것이 아니고, UIImageView는 보여주기위한 것
        
      // let imageView = UIImageView(frame: CGRect(x: 26, y: 100, width: 130, height: 150))
   /*
    var x = 26
    var y = 100
        
      var imageView = UIImageView(frame: CGRect(x: x, y: y, width: 130, height: 150))
        for i in 0...6 {
            x = 140 * i + 26
            for _ in 0...6 {
                y = y + 40
                
                imageView.image = UIImage(named: "sA")
                view.addSubview(imageView)
            }
*/
        }
    let A : Array = [ "c", "h", "d", "s" ]
    let N : Array = [ "A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    
    func join(a : String, n : String) -> String {
      return a + n     }
 

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var x = 0
        var y = 0
       // let view = UIImageView(frame: CGframe)
          for i in 0...6 {
            x = 140 * i + 26
            y = 100
            for _ in 0...i {
                y = y + 40
                
    var CGframe = CGRect(x: x, y: y, width: 130, height: 150)
                
                var imageView = UIImageView(frame: CGframe)
                imageView.image = UIImage(named: imageName)
                view.addSubview(imageView)
            }
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
