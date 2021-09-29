//
//  PartiesViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/22/21.
//

import UIKit

class PartiesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let titles = ["Boat Party", "Camping Party", "House Party", "Pool Party"]
    let image = [UIImage(named: "Boat Party"), UIImage(named: "Camping Party"), UIImage(named: "House Party"), UIImage(named: "Pool Party")]
    let shortDescription = ["something about the party", "something about the party", "something about the party", "something about the party"]
    let price = ["price", "price", "price", "price"]
    let longDescription = ["more about the party here", "more about the party here", "more about the party here", "more about the party here"]
    let location = ["location", "location", "location", "location"]
    
    var purchases = [String]()
    var saved = [String]()
    
    
    @IBAction func buyAction(_ sender: Any) {
        // Create the alert controller
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
        
        //add party to an array and display info in ticket controller
        //array purchases
        
        
        
    }
    
    
    @IBAction func saveAction(_ sender: Any) {
        print("saving event")
        
        let alert = UIAlertController(title: "Saved!", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        //add to array saved and display on saved controller
        
        
        
    }
    
    
    @IBOutlet weak var collectionView: UICollectionView!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
        title = "Parties"
        
//        card.layer.cornerRadius = 10
//        card.layer.shadowColor = UIColor.gray.cgColor
//        card.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
//        card.layer.shadowRadius = 4.0
//        card.layer.shadowOpacity = 0.5
//
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PartiesCollectionViewCell
        
        cell.title.text = titles[indexPath.row]
        cell.image.image = image[indexPath.row]
        cell.about.text = shortDescription[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let details = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
        
        details?.party = titles[indexPath.row]
        details?.longDescription =  longDescription[indexPath.row]
        details?.cost = price[indexPath.row]
        details?.area = location[indexPath.row]
        
        self.navigationController?.pushViewController(details!, animated: true)
    }
    
    

}
