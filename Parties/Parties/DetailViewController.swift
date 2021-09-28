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
    
    var party = ""
    var about = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(party)
        
        label.text = party
        image.image = UIImage(named: party)
        details.text = about

    }
    

}
