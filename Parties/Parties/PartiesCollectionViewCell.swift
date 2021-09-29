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
    @IBOutlet weak var card: UIView!
    
    @IBAction func heart(_ sender: Any) {
        self.save.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }
    
    @IBAction func purchase(_ sender: Any) {
//        self.buy.setTitle("You have \() tickets to this show", for: .normal)
    }
    
    
    
    func cardView() {
        card.layer.cornerRadius = 10
        card.layer.shadowColor = UIColor.gray.cgColor
        card.layer.shadowOffset = CGSize(width: 5, height: 5)
        card.layer.shadowRadius = 4.0
        card.layer.shadowOpacity = 0.5
    }
    
}

