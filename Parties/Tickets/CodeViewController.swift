//
//  CodeViewController.swift
//  Parties
//
//  Created by Adri Torres on 10/7/21.
//

import UIKit

class CodeViewController: UIViewController {

    @IBOutlet weak var code: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor =  UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
        
        code.image = UIImage(named: "qr-code")
        logo.image = UIImage(named: "frog")
        // Do any additional setup after loading the view.
    }
    


}
