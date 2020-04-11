//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
// Work with audiovisual assets, control device cameras, process audio, and configure system audio interactions.
import AVFoundation

class ViewController: UIViewController {
    
    //For playback and recording of a single track
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        // Bundle: Representation of Code and Resources, stored on a disk.
        // Using Main bundle to locate the sound file resource
        // url is looking for resources i.e. C.wav
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        // Plays the contents of the url constant
        player = try! AVAudioPlayer(contentsOf: url!)
        // Plays it
        player.play()
                
    }
}


