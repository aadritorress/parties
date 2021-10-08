//
//  TicketsViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/28/21.
//

import UIKit

class TicketsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var purchases: [PurchaseModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Tickets"
        view.backgroundColor =  UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ticket view-controller appearing", purchases)
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return purchases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ticketcell", for: indexPath) as! TicketsTableViewCell
        
        //use purchases array to display parties
        
        cell.party.text = purchases[indexPath.row].party.title
        cell.tickets.text = "You have \(purchases[indexPath.row].ticketsQ) ticket(s)"
        cell.imageParty.image = purchases[indexPath.row].party.image
        let price = purchases[indexPath.row].party.price
        let ticket = purchases[indexPath.row].ticketsQ
        let total = Int(price)! * Int(ticket)!
        cell.totalPrice.text = "Total Price: $ \(total)"
        
        print(purchases[indexPath.row].party.price)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let code = UIStoryboard(name: <#T##String#>, bundle: <#T##Bundle?#>)
        let code = storyboard?.instantiateViewController(identifier: "qr-code") as? CodeViewController
        code?.modalPresentationStyle = .popover
        present(code!, animated: true, completion: nil)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
        
    
    
}
