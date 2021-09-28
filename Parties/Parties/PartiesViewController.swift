//
//  PartiesViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/22/21.
//

import UIKit

class PartiesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
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
        //add party to controller (tickets) and display info
        
    }
    
    @IBAction func saveAction(_ sender: Any) {
        print("saving event")
    }
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let titles = ["Boat Party", "Camping Party", "House Party", "Pool Party"]
    
    let image = [UIImage(named: "Boat Party"), UIImage(named: "Camping Party"), UIImage(named: "House Party"), UIImage(named: "Pool Party")]
    
    let about = ["description", "description", "description", "description"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
        title = "Parties"
    }

    
//    func assignbackground(){
//          let background = UIImage(named: "backgroundVC")
//
//          var imageView : UIImageView!
//          imageView = UIImageView(frame: view.bounds)
//        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
//          imageView.clipsToBounds = true
//          imageView.image = background
//          imageView.center = view.center
//        imageView.layer.zPosition = -1
//          collectionView.addSubview(imageView)
//      }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PartiesCollectionViewCell
        
        cell.title.text = titles[indexPath.row]
        cell.image.image = image[indexPath.row]
        cell.about.text = about[indexPath.row]
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let details = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
        
        details?.party = titles[indexPath.row]
        details?.about =  about[indexPath.row]
        self.navigationController?.pushViewController(details!, animated: true)
        
    }
    

}
