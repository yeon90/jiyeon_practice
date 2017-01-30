//
//  ViewController.swift
//  TableViewSample
//
//  Created by Ji yeon Park on 2017. 1. 26..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    // row값이 몇개인지 
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        var cell : UITableViewCell
        if(indexPath.row % 2 == 0) {
            cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath )
            cell.textLabel?.text = String("hello,")
            cell.detailTextLabel?.text = String("Stranger")
        }
        else {
            cell = tableView.dequeueReusableCell(withIdentifier: "rightCell", for: indexPath )
            cell.textLabel?.text = String(indexPath.row)
            cell.detailTextLabel?.text = String("")
        }
        
        return cell
    }
    
        //여기에서 cell의 내용을 바꿔줌
    
}
    // 재사용queue 설정해주기


