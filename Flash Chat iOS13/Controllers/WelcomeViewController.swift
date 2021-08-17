import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "⚡️FlashChat"
        
                titleLabel.text = ""
                let titleText = "⚡️FlashChat"
                var charIndex = 0.0
                for letter in titleText {
                    Timer.scheduledTimer(withTimeInterval: 0.1*charIndex, repeats: false) { Timer in
                        self.titleLabel.text?.append(letter)
                    }
                    charIndex += 1
        }
    }
}
