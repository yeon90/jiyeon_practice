//
//  YellowViewController.swift
//  project_0117
//
//  Created by Ji yeon Park on 2017. 1. 18..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    var titleString : String = ""
    // 변수 초기값 지정 - titleString의값을 titleLabel에 보여줘라는 함수가 필요함
    
    //값이 하나가 아니라 여러개일때, array나 dictionary로 한번에 담아서 선언해줌
    var dataDictionary : [String :Any] = [:]
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        // super클래스(UIViewController)에 들어있는 viewWillLayoutSubview를 불러줘
        titleLabel.text  = titleString
        // 이전 VC에서 넘긴 값을 이 화면(yellowVC에 띄울수 있음)
    titleLabel.text = dataDictionary ["title"] as? String
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
