//
//  HomeViewController.swift
//  SS
//
//  Created by user211074 on 2/21/22.
//

import UIKit
import Parse

class HomeViewController: ViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func logOut(_ sender: Any) {
        PFUser.logOut()
        
        let main = UIStoryboard(name :"Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "loginViewController")
        guard let windowsScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let
                delegate = windowsScene.delegate as? SceneDelegate else {return}
        
        delegate.window?.rootViewController = loginViewController
 
    }
    
}
