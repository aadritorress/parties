//
//  PartiesCollectionViewCell.swift
//  Parties
//
//  Created by Adri Torres on 9/22/21.
//

import UIKit

class PartiesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var about: UILabel!
    @IBOutlet weak var buy: UIButton!
    @IBOutlet weak var save: UIButton!
    
    
    
    func display() {
        image.image = UIImage(named: "pool")
        title.text = "title"
        about.text = "about"
        buy.setTitle("Buy Tickets", for: .normal)
        save.setTitle("Save", for: .normal)
    }

    
    
}

