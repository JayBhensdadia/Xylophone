//
//  ViewController.swift
//  Xylophone
//
//  Created by Jay Bhensdadia on 19/10/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        playAudio(whoSentIt: sender.currentTitle!)
        
    }
    
    
    func playAudio(whoSentIt: String){
        
        if let asset = NSDataAsset(name: whoSentIt){
            player = try! AVAudioPlayer(data:asset.data, fileTypeHint:"wav")
            
            player.play()
        }
        
        
        
//        let url = Bundle.main.url(forResource: whoSentIt, withExtension: "wav")
//        //player = try! AVAudioPlayer(contentsOf: url!)
//
//
//        player.play()
    }
    
    
}

