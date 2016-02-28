//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Donny Davis on 2/28/16.
//  Copyright © 2016 Donny Davis. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var receivedAudio:RecordedAudio!

    override func viewDidLoad() {
        super.viewDidLoad()

//        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
//            let url = NSURL.fileURLWithPath(filePath)
//        } else {
//            print("The file path was empty!")
//        }
        
        audioPlayer = try! AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playAudioSlow(sender: UIButton) {
        resetAudio()
        audioPlayer.rate = 0.5
        audioPlayer.play()
    }
    
    @IBAction func playAudioFast(sender: UIButton) {
        resetAudio()
        audioPlayer.rate = 1.5
        audioPlayer.play()
    }

    @IBAction func stopPlayingAudio(sender: UIButton) {
        resetAudio()
    }
    
    func resetAudio() {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
