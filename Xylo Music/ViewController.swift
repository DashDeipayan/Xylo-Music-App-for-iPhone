//
//  ViewController.swift
//  Xylo Music
//
//  Created by Deipayan Dash on 23/05/18.
//  Copyright © 2018 Deipayan Dash. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    var player = AVAudioPlayer()
    
    let noteArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func notePressed(_ sender: UIButton) {
        let file: String = noteArray[sender.tag-1]
        playsound(filename: file)
    }
    func playsound(filename: String) {
        let url = Bundle.main.url(forResource: filename, withExtension: "wav")!
        do{
            player = try AVAudioPlayer(contentsOf: url)
        }
        catch{
            print(error)
        }
        player.play()
        
        
    }

}

