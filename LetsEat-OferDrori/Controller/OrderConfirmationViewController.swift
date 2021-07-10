//
//  OrderConfirmationViewController.swift
//  LetsEat-OferDrori
//
//  Created by user196234 on 6/26/21.
//



import UIKit

class OrderConfirmationViewController: UIViewController {

    /// Label with time remaining information
    @IBOutlet weak var timeRemainingLabel: UILabel!
    
    /// Time remaining in minutes
    var minutes: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // see if s at the end needs to be used for plural
        let s = minutes! == 1 ? "" : "s"

        // message to the user with the time remaining
        timeRemainingLabel.text = "Thank you for your order!  Your wait time is approximatly \(minutes!) minute\(s)."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
