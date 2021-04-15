//
//  ViewController.swift
//  FaceID
//
//  Created by ozan aydogdu on 14.04.2021.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var myLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
    }


    @IBAction func singInClicked(_ sender: Any) {
        
        
        let authContext = LAContext()
        
        
        var error : NSError?
        
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "is it you?") { succes, error in
                if succes == true{
                    
                    DispatchQueue.main.sync {
                        self.performSegue(withIdentifier: "toSecondVC", sender: nil)
                    }
                    
                  
                }else{
                    DispatchQueue.main.sync {
                        self.myLabel.text = "Error!"
                        
                    }
                }
            }
            
            
            
        }
        
        
        
        
    }
    
    
    
    
}

