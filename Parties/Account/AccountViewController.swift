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
//        assignbackground()
        
        view.backgroundColor =  UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
        title = "My Account"
        
        let image = UIImage(named: "steph")
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 130, y: 130, width: 150, height: 170)
        imageView.layer.borderWidth = 3
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor(red: 0.1804, green: 0.3882, blue: 0.0118, alpha: 1.0).cgColor
        imageView.layer.cornerRadius = imageView.frame.height/3
        imageView.clipsToBounds = true
        self.view.addSubview(imageView)
        
        let editProfile = UIButton(frame: CGRect(x: 150, y: 310, width: 100, height: 15))
        editProfile.setTitle("Edit Profile", for: .normal)
        editProfile.setTitleColor(.systemBlue, for: .normal)
        editProfile.titleLabel?.font = .systemFont(ofSize: 15)
        view.addSubview(editProfile)
        //add action to edit 
       
        
        let name = UILabel(frame: CGRect(x: 10, y: 340, width: 200, height: 21))
        name.textAlignment = .left
        name.text = "Steph Hunter"
        self.view.addSubview(name)
        
        let labelPronouns = UILabel(frame: CGRect(x: 10, y: 395, width: 200, height: 21))
        labelPronouns.textAlignment = .left
        labelPronouns.text = "She/Her"
        self.view.addSubview(labelPronouns)
        
        
        let email = UILabel(frame: CGRect(x: 10, y: 445, width: 200, height: 21))
        email.textAlignment = .left
        email.text = "ste@gmail.com"
        self.view.addSubview(email)
        
        let location = UILabel(frame: CGRect(x: 10, y: 495, width: 200, height: 21))
        location.textAlignment = .left
        location.text = "Lives in Philadelphia, PA"
        self.view.addSubview(location)
        
        let cardsPayments = UIButton(frame: CGRect(x: 10, y: 0, width: 200, height: 21))
        cardsPayments.center = CGPoint(x: 200, y: 600)
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
    
//    func assignbackground(){
//          let background = UIImage(named: "backgroundVC")
//
//          var imageView : UIImageView!
//          imageView = UIImageView(frame: view.bounds)
//        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
//          imageView.clipsToBounds = true
//          imageView.image = background
//          imageView.center = view.center
//          view.addSubview(imageView)
//      }


    
    class PaymentViewController: UIViewController {
        override func viewDidLoad() {
            view.backgroundColor = .white
            
            title = "Add your Card"
            
            
            let card = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            card.center = CGPoint(x: 100, y: 395)
            card.textAlignment = .center
            card.text = "Add your cards here"
            self.view.addSubview(card)
            
            let background = UIImage(named: "backgroundVC")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
            imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
         
        }
    }
    
    
}
