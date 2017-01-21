//
//  PhotoViewController.swift
//  project_0117
//
//  Created by Ji yeon Park on 2017. 1. 18..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    var Dictionary1 : [String:Any] = [:]
    
    @IBOutlet weak var photoImage: UIImageView!
    
    
    @IBOutlet weak var title1: UILabel!
    
    
    @IBOutlet weak var contents: UILabel!
    
    
    @IBOutlet weak var comments: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        photoImage.image = UIImage(named:(Dictionary1 ["image"] as? String)!)
        title1.text = Dictionary1 ["title"] as? String
        contents.text = Dictionary1 ["content"] as? String
        let commentArray = Dictionary1 ["comments"] as? Array<[String:Any]>
        comments.text = "\(commentArray?.count)"
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
