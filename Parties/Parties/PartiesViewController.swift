//
//  PartiesViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/22/21.
//

import UIKit

class PartiesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {


    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let titles = ["Boat Party", "Camping Party", "House Party", "Pool Party"]
    
    let image = [UIImage(named: "boat"), UIImage(named: "camping"), UIImage(named: "house"), UIImage(named: "pool")]
    
    let about = ["description", "description", "description", "description"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Parties"
        assignbackground()
    }

    
    func assignbackground(){
          let background = UIImage(named: "backgroundVC")

          var imageView : UIImageView!
          imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
          imageView.clipsToBounds = true
          imageView.image = background
          imageView.center = view.center
        imageView.layer.zPosition = -1
        
          collectionView.addSubview(imageView)
      }
    
    
    
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
    

}

