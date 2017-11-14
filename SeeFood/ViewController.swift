//
//  ViewController.swift
//  SeeFood
//
//  Created by Feras Fakihani on 11/14/17.
//  Copyright © 2017 Feras Fakihani. All rights reserved.
//

import UIKit
import Vision
import CoreML

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
//    let photoTaker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = false
        
//        photoTaker.delegate = self
//        photoTaker.sourceType = .camera
//        photoTaker.allowsEditing = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let imagePickedByUser = info[UIImagePickerControllerOriginalImage] as? UIImage{
            imageView.image = imagePickedByUser
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
//        photoTaker.dismiss(animated: true, completion: nil)
        
    }

    @IBAction func pickImagePressed(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func takePhotoPressed(_ sender: UIBarButtonItem) {
//        present(photoTaker, animated: true, completion: nil)
    }
}

