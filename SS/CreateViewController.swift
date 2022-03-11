//
//  CreateViewController.swift
//  SS
//
//  Created by user211074 on 3/9/22.
//

import UIKit
import Parse

class CreateViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var cPasswordField: UITextField!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createButton(_ sender: Any) {
        
        let user = PFUser()
        
        user.email = emailText.text
        user.password = passwordField.text
        
         
        let password = passwordField.text!
        let email = emailText.text!
        let cPassword = cPasswordField.text
        
        PFUser.logInWithUsername(inBackground: email, password: password) { (user, error) in
            if user != nil{
                self.performSegue(withIdentifier: "loginSegue" , sender: nil)
            } else{
                print("Error: \(error?.localizedDescription)")
                
                
            }
            
        }
        
     }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
