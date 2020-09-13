//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Brenden Picioane on 8/31/20.
//  Copyright © 2020 Brenden Picioane. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    let totalImages = 10
    var messageNumber = -1
    var imageNumber = -1
    var audioPlayer : AVAudioPlayer!
    var soundNumber = -1
    let totalSounds = 6
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: "\(name)") {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription) could not initialize AVAudioPlayer object")
            }
            
        } else {
            print("ERROR: could not real data from file \(name)")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0..<upperBounds)
        } while originalNumber == newNumber
        return newNumber
    }

    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Cool!", "You Are Fantastic!", "When the Genius Bar Needs Help, They Call You!", "You've Got The Design Skills Of Jony Ive!"]
//        var newMessageNumber : Int
//        repeat {
//            newMessageNumber = Int.random(in: 0...messages.count - 1)
//        } while messageNumber == newMessageNumber
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count)
        messageLabel.text = messages[messageNumber]
        
//        var newImageNumber : Int
//        repeat {
//            newImageNumber = Int.random(in: 0...totalImages)
//        } while imageNumber == newImageNumber
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalImages)
        imageView.image = UIImage(named: "image\(imageNumber)")

        
//        var newSoundNumber : Int
//        repeat {
//            newSoundNumber = Int.random(in: 0...totalSounds - 1)
//        } while soundNumber == newSoundNumber
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalSounds)
        print(soundNumber)
        if playSoundSwitch.isOn {
            playSound(name: "sound\(soundNumber)")
        }
        
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
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil{
            audioPlayer.stop()
        }
    }
    //test
}

