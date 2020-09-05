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
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Cool!", "You Are Fantastic!", "You Are Swifty!"]
        messageLabel.text = messages[messageNumber]
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = (imageNumber + 1) % 10
        messageNumber = (messageNumber + 1) % messages.count
        
        
        
//        let awesomeMessage = "You Are отлично!"
//        let greatMessage = "You Are Great!"
//        let bombMessage = "You Are Da Bomb!"
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//        } else if messageLabel.text == greatMessage {
//            messageLabel.text = bombMessage
//            imageView.image = UIImage(named: "image2")
//        } else {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//        }
        
    }
    
}

