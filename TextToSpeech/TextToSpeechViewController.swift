//
//  TextToSpeechViewController.swift
//  TextToSpeech
//
//  Created by Dayton Steffeny on 8/23/19.
//  Copyright © 2019 DaytonSteffeny. All rights reserved.
//

import UIKit
import AVFoundation


class TextToSpeechViewController: UIViewController
{
    
    
    @IBOutlet weak var textView: UITextView!
    let synthesizer = AVSpeechSynthesizer()
    // Linking IBOutlet
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // to ensure it loads
    }
    
    @IBAction func Speak(_ sender: Any)
    {
        let utterance = AVSpeechUtterance(string: textView.text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US") // speaking accent
        utterance.rate = 0.5
        
        synthesizer.speak(utterance)
    }
}
