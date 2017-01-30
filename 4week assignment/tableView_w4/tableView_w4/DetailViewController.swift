//
//  DetailViewController.swift
//  tableView_w4
//
//  Created by Ji yeon Park on 2017. 1. 30..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let imageView = self.photoImageView {
                let imageName = "\(detail).jpg"
                imageView.image = UIImage(named : imageName)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

