//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    @IBAction func onKeyPressed(_ sender: UIButton) {
        print("Start!")
        sender.layer.opacity = 0.5
        playSound(sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            sender.layer.opacity = 1
            print("End!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(_ soundType: String) {
        guard let url = Bundle.main.url(forResource: soundType, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }
  
            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
}

