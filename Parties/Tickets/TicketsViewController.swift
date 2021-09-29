//
//  TicketsViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/28/21.
//

import UIKit

class TicketsViewController: UIViewController {

    var purchases: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Tickets"
        view.backgroundColor =  UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ticket vc appearing", purchases)
        
        let label = UILabel(frame: CGRect(x: 90, y: 170, width: 300, height: 40))
        label.text = purchases[0]
        print(purchases)
        label.font = UIFont(name:"Georgia", size: 20.0)
        self.view.addSubview(label)
        
        let ticket = UILabel(frame: CGRect(x: 90, y: 210, width: 300, height: 40))
        ticket.text = "You have \(purchases[1]) ticket(s)"
        ticket.font = UIFont(name:"Georgia", size: 20.0)
        self.view.addSubview(ticket)
        
        
    }
    
}
