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
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var save: UIButton!
    @IBOutlet weak var card: UIView!
    
    var saved: [String] = []
    
    let tabBarController: UITabBarController? = nil
    
    @IBAction func heart(_ sender: Any) {
        self.save.setImage(UIImage(systemName: "heart.fill"), for: .normal)
//        print("party:\(title.text!)")
        
        
        saved = UserDefaults.standard.array(forKey: "saved") as! [String]
        saved.append(title.text ?? "")
        let defaults = UserDefaults.standard
        defaults.setValue(saved, forKey: "saved")
        print("from parties cell - saved:\(saved)")
//        print("from parties cell - saved:\(savedTwo)")
        
//        defaults.removeObject(forKey: "")
    }

    func cardView() {
        card.layer.cornerRadius = 20
        card.layer.shadowColor = UIColor.gray.cgColor
        card.layer.shadowOffset = CGSize(width: 5, height: 5)
        card.layer.shadowRadius = 12.0
        card.layer.shadowOpacity = 0.7
    }
    
}
