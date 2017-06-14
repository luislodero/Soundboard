//
//  SoundViewController.swift
//  Soundboard
//
//  Created by Luis Lopez on 6/13/17.
//  Copyright © 2017 Luis Lopez. All rights reserved.
//

import UIKit
import AVFoundation

class SoundViewController: UIViewController {
   
    
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var recordButton: UIButton!
    
    var audioRecorder : AVAudioRecorder?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupRecorder()
    }
    
    func setupRecorder(){
        do{
        //Create an audio session
        let session = AVAudioSession.sharedInstance()
        try session.setCategory(AVAudioSessionCategoryPlayAndRecord)
        try session.overrideOutputAudioPort(.speaker)
        try session.setActive(true)

        // Create URL for the audio file
        
        // Create settings for the audio recorder
        
        
        // Create Audio Recorder Object
        
        audioRecorder = AVAudioRecorder(url: <#T##URL#>, settings: <#T##[String : Any]#>)
        }catch {
            print(error)
        }
    }

    @IBAction func recordTapped(_ sender: Any) {
    }
    
    
    @IBAction func playTapped(_ sender: Any) {
    }
    
    @IBAction func addTapped(_ sender: Any) {
    }
    
    
}
