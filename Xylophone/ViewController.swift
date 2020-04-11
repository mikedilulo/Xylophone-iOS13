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
        /* Sender.courrent title has a data type that is an optional string. Optional comes from ?, count have a button that the title is nil. In that case we would be trying to pass a non existing value and crash the application */
        playSound(soundName: sender.currentTitle!)
        
    }
    
    func playSound(soundName: String) {
        // Bundle: Representation of Code and Resources, stored on a disk.
        // Using Main bundle to locate the sound file resource
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        // Plays the contents of the url constant
        player = try! AVAudioPlayer(contentsOf: url!)
        // Plays it
        player.play()
                
    }
}


