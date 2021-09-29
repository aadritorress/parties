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
