//
//  SecondViewController.swift
//  project_0117
//
//  Created by Ji yeon Park on 2017. 1. 17..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func pickerButtonTouched(_ sender: Any) {
        let pickerController = UIImagePickerController()
        
        pickerController.sourceType = .photoLibrary
        pickerController.delegate = self
        
        present(pickerController, animated: true, completion: nil)
        //nil : 원래 함수를 넣어주어야하는데 아무것도 안넣어줄때: 다 끝나고 나면 completion다음 함수를 불러줘 
        // present 함수 : 다른 viewcontroller를 띄우는 함수
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] {
                         // 도움말에서 상수를 복붙 (UIImagePickerControllerDelegate)
            imageView.image = image as! UIImage
        // if let 구문 : [ ] 안에 값이 있으면 넣어주고, 비어있으면
        }
        else {
            print("값이 없음")
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    
}
