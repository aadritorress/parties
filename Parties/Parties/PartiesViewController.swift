//
//  PartiesViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/22/21.
//

import UIKit

struct PartyModel {
    let title: String
    let image: UIImage
    let shortDescription: String
    let price: String
    let longDescription: String
    let location: String
}

class PartiesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let titles = ["Boat Party", "Camping Party", "House Party", "Pool Party"]
    let image = [UIImage(named: "Boat Party"), UIImage(named: "Camping Party"), UIImage(named: "House Party"), UIImage(named: "Pool Party")]
    let shortDescription = ["Party on a yacht down the Delaware River with a three hour open bar, a dinner buffet, and a live DJ all included with your ticket.", "We'll go canoeing, hang out at the waterfall, and make s'mores around the campfire. This is THEE event of the summer you don't want to miss!", "Slide through, bring your friends, make new ones, sing along, and we'll see you on the dance floor!", "The weather is warm now that summer is here, We're celebrating at Taylor's house with good food & some beer."]
    let price = ["40", "25", "22", "15"]
    let longDescription = ["more about the party here", "Bring a swimsuit for the lake party with sounds provided by top DJs. Sign up for the kickball game and feed your competitive spirit. Relax under your tent while our chef manages the grill. The drinks are on us!", "An energetic fun night of dancing to tunes that range from Harry Styles to Lizzo to ABBA and so many more favorites!", "more about the party here"]
    let location = ["Philadelphia, PA", "Austin, TX", "San Francisco, CA", "Washington, D.C."]

    var parties: [PartyModel] = []
    
    func createParties() {
        for num in 0..<titles.count {
            let party = PartyModel(title: titles[num], image: image[num]!, shortDescription: shortDescription[num], price: price[num], longDescription: longDescription[num], location: location[num])
            parties.append(party)
        }
    }
    

    
    @IBAction func saveAction(_ sender: Any) {
//        print("saving event...")
        
        let alert = UIAlertController(title: "Saved!", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
        title = "Parties"
        
        createParties()
//        print(parties)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PartiesCollectionViewCell
        
        cell.title.text = titles[indexPath.row]
        cell.image.image = image[indexPath.row]
        cell.about.text = shortDescription[indexPath.row]
        cell.location.text = location[indexPath.row]
//        cell.saved = 
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let details = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
        
        details?.party = titles[indexPath.row]
        details?.longDescription =  longDescription[indexPath.row]
        details?.cost = price[indexPath.row]
        details?.area = location[indexPath.row]
        details?.partyImage = image[indexPath.row]
        
        self.navigationController?.pushViewController(details!, animated: true)
    }
    
    

}
