import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error { self.errorLabel.text = e.localizedDescription }
                else {
                    self.performSegue(withIdentifier: "LoginToChat", sender: .none)
                    }
                }
            }
        
        
        
    }
    
}
