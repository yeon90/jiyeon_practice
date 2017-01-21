//
//  SecondViewController.swift
//  practice_0117
//
//  Created by Ji yeon Park on 2017. 1. 17..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//  왜 ?
  
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTouched(_ sender: Any) {
        let pickerController = UIImagePickerController()
        pickerController.sourceType = .photoLibrary
        pickerController.delegate = self
        
        present(pickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] {
        imageView.image = image as! UIImage
        }
        else {
            //print("값이없음")
        }
    picker.dismiss(animated: true, completion: nil)
        // dismiss??
    }
}
