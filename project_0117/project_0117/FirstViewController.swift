//
//  FirstViewController.swift
//  project_0117
//
//  Created by Ji yeon Park on 2017. 1. 17..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //segue 를 준비하는 단게에서 불림 - 화면이 넘어가기 전에 yellowVC의 값을 참조해서 걔한테 값을 넘겨줘 
    //prepare를하더라도 yellowVC의 인스턴스만 만들어진 상태고 yellowVC의 화면 준비는 안된 상태이다. 이런 상태에서 값을 넘길 수 없음. --> yellowVC에 변수를 따로 만들어야함
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstSegue" {
            let yellowVC : YellowViewController = segue.destination as! YellowViewController
            
            yellowVC.titleString = "여기보세요"
            
            yellowVC.dataDictionary = ["title" : "사전"]
        }
    }
    @IBAction func buttonTouched(_ sender: Any) {
 //   storyboard?.instantiateViewController(withIdentifier:"yellowVC")
    let yellowVC : YellowViewController = storyboard?.instantiateViewController(withIdentifier:"yellowVC") as! YellowViewController
        yellowVC.dataDictionary = ["title":"사전"]
        present(yellowVC, animated: true, completion: nil)
    }

  
}

