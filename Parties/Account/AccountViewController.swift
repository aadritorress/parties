//
//  AccountViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/22/21.
//

import UIKit

class AccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "My Account"
        
        let image = UIImage(named: "gato")
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        view.addSubview(imageView)
       
        
        let name = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        name.center = CGPoint(x: 100, y: 285)
        name.textAlignment = .center
        name.text = "Adri Torres"
        self.view.addSubview(name)
        
        let email = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        email.center = CGPoint(x: 130, y: 340)
        email.textAlignment = .center
        email.text = "adriana@msn.com"
        self.view.addSubview(email)
        
//        let labelPronouns = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
//        labelPronouns.center = CGPoint(x: 100, y: 395)
//        labelPronouns.textAlignment = .center
//        labelPronouns.text = "She/Her"
//        self.view.addSubview(labelPronouns)
        
        let cardsPayments = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        cardsPayments.center = CGPoint(x: 200, y: 550)
        cardsPayments.setTitle("Cards & Payments", for: .normal)
        cardsPayments.setTitleColor(.systemBlue, for: .normal)
        cardsPayments.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        view.addSubview(cardsPayments)
           
    }
    
    @objc func pressed() {
        print("clicked")
        let newViewController = PaymentViewController()
        self.navigationController?.pushViewController(newViewController, animated: true)
        
    }

    
    class PaymentViewController: UIViewController {
        override func viewDidLoad() {
            view.backgroundColor = .white
            
            title = "Add your Card"
            
            
            let card = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            card.center = CGPoint(x: 100, y: 395)
            card.textAlignment = .center
            card.text = "Add your cards here"
            self.view.addSubview(card)
        }
    }
    
    
}
