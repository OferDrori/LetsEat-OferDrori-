//
//  SignUpViewController.swift
//  LetsEat-OferDrori
//
//  Created by user196234 on 6/29/21.
//

import UIKit
import FirebaseAuth
import Firebase
class SignUpViewController: UIViewController {
    
    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var errorLbl: UILabel!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElement()
    }
    func setUpElement(){
        errorLbl.alpha=0
        
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: self.emailTextField.text ?? "", password: self.passwordTextField.text ?? "") { result, err in
                }
        
        UserData.fullName=fullNameTextField.text!
        UserData.userEmail=emailTextField.text!
            transitionToMenu()
            }
           
          
        
        
        
        func transitionToMenu(){
            
            let homeView=storyboard?.instantiateViewController(identifier: "homeBar")
            view.window?.rootViewController=homeView
            view.window?.makeKeyAndVisible()
            
        }
        
        
    }
    


