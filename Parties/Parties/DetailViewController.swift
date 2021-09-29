//
//  DetailViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/28/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var ticketsQ: UILabel!
    @IBOutlet weak var ticketsPurchased: UILabel!
    
    
    @IBAction func stepper(_ sender: UIStepper) {
        ticketsQ.text = String(sender.value)
    }
    
    
    @IBAction func purchase(_ sender: Any) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
    
        
        // Create the actions
        let buyAction = UIAlertAction(title: "Confirm", style: .default) {
            UIAlertAction in
//            NSLog("Buying ticket...")
            self.purchase()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {
            UIAlertAction in
            NSLog("Cancel")
        }

        // Add the actions
        alertController.addAction(buyAction)
        alertController.addAction(cancelAction)

        // Present the controller
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @objc func purchase() {
        print("buying ticket")
        let alert = UIAlertController(title: "Order confirmed", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
        ticketsPurchased.text = "You have \(String(describing: ticketsQ.text!)) tickets to this show"
        ticketsQ.text = "1"
        
        //add party to an array and display info in ticket controller
        //array purchases
        
    
    }
    
    
    
    var party = ""
    var longDescription = ""
    var cost = ""
    var area = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(party)
        
        label.text = party
        image.image = UIImage(named: party)
        details.text = longDescription
        price.text = cost
        location.text = area
        
    }
    

}
