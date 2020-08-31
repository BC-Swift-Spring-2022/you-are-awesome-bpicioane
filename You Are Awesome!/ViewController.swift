//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Brenden Picioane on 8/31/20.
//  Copyright © 2020 Brenden Picioane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("‼️ viewDidLoad has run!")
        messageLabel.text = "Fabulous? That's you!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
    
}

