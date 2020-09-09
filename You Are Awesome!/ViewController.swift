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
    

    let totalImages = 9
    var messageNumber = -1
    var imageNumber = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Cool!", "You Are Fantastic!", "When the Genius Bar Needs Help, They Call You!", "You've Got The Design Skills Of Jony Ive!"]
        var newMessageNumber : Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count - 1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber : Int
        repeat {
            newImageNumber = Int.random(in: 0...totalImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(newImageNumber)")
        //imageNumber = (imageNumber + 1) % 10
        //messageNumber = (messageNumber + 1) % messages.count
        
        
        
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

