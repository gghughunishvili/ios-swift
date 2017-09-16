//
//  ViewController.swift
//  learning-swoosh-app
//
//  Created by Giorgi Ghughunishvili on 9/16/17.
//  Copyright © 2017 Giorgi Ghughunishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swoosh.frame = CGRect(x: (view.frame.size.width - swoosh.frame.size.width)/2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
        
        bgImg.frame = view.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

