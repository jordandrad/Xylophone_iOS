

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1.0
        }
        playSound(file:sender.currentTitle!)
        print(sender.currentTitle)
        
        if sender.currentTitle == "G"{
            print("It worked and the G button got tapped")
        }
    }
    

    
    func playSound(file: String) {
        let url = Bundle.main.url(forResource: file, withExtension: "wav")
              player = try! AVAudioPlayer(contentsOf: url!)
              player.play()

    }
    

}

