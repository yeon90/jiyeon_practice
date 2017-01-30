//
//  ViewController.swift
//  Realm
//
//  Created by Ji yeon Park on 2017. 1. 26..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let realm = try! Realm()
        let myClass = codeSquad(value: [Date(), "Hello"])
        
        try! realm.write {
            realm.add(myClass)
        }
        let classes = realm.objects(codeSquad.self)
        // print (classes)
        print (classes.count)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

