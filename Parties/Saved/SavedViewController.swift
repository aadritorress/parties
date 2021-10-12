//
//  SavedViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/28/21.
//

import UIKit

class SavedViewController: UIViewController {


    var saved: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
        title = "Saved"
        saved = UserDefaults.standard.value(forKey: "saved") as! [String]
        print("from saved controller: saved - \(saved)")
        
        
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return saved.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
    

    
}


















//if let value = userDefaults.value(forKey: "name") as? String {
//    label.text = value
//}
//}
//
//
//func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//
//userDefaults.setValue(field.text, forKey: "name")
//return true
//}
