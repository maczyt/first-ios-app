//
//  ViewController.swift
//  ChineseZadic
//
//  Created by 周宇涛 on 2017/8/19.
//  Copyright © 2017年 maczyt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yearOfBirth: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }
    
    @IBAction func okTapped(_ sender: UIButton) {
        yearOfBirth.resignFirstResponder()
        if let year = Int(yearOfBirth.text!) {
           let imageNumber = (year - 4) % 12
           image.image = UIImage(named: "\(imageNumber)")
        } else {
            // notify user
        }
    }
}

