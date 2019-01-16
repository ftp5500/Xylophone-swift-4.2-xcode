//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , AVAudioPlayerDelegate {
    
    var audioPlayer:AVAudioPlayer?
    let noteArray = ["note1" ,"note2" , "note3", "note4", "note5", "note6", "note7"]
    var selectFileName:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
       selectFileName = noteArray[sender.tag - 1]
        
        print(selectFileName)
     
       let soundURL = Bundle.main.url(forResource: selectFileName , withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
          audioPlayer?.play()
        }
        catch{
            print(error)
        }
      
    }//button func


}//class

































//        // creating input function
//        func noteAudio (noteName:String ){
//            //creating an optional variable for audio file name
//            let soundURL = Bundle.main.url(forResource: "\(noteName)", withExtension: "wav")
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL! as CFURL, &mySound)
//            // Play
//            AudioServicesPlaySystemSound(mySound);
//        }
//       // using condition to move between buttons and give every button the write audio file
//        if sender.tag == 1{
//            noteAudio(noteName:"note1")
//        }
//        else if sender.tag == 2{
//            noteAudio(noteName: "note2")
//        }
//        else if sender.tag == 3{
//            noteAudio(noteName: "note3")
//        }
//        else if sender.tag == 4{
//            noteAudio(noteName: "note4")
//        }
//        else if sender.tag == 5{
//            noteAudio(noteName: "note5")
//        }
//        else if sender.tag == 6{
//            noteAudio(noteName: "note6")
//        }
//        else if sender.tag == 7{
//            noteAudio(noteName: "note7")
//        }
//    }
//
//}//class
//
