//
//  TicketsViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/28/21.
//

import UIKit

class TicketsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var purchases: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Tickets"
        view.backgroundColor =  UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ticket view-controller appearing", purchases)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ticketcell", for: indexPath) as! TicketsTableViewCell
        
        cell.party.text = "party goes here"
        cell.tickets.text = "tickets goes here"
        cell.totalPrice.text = "price goes here"
        
        return cell
    }
        
    
    
}
