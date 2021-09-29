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
        
        print("from saved controller: saved - \(saved)")
    }
    
}
