import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(key:  sender.currentTitle!)
    
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 0.2){
            sender.alpha = 1.0
            
        }
        sender.alpha = 0.5
    }
    
    func playSound(key: String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
