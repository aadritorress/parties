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


    
    class PaymentViewController: UIViewController {
        override func viewDidLoad() {
            view.backgroundColor =  UIColor(red: 0.9804, green: 0.9882, blue: 0.8902, alpha: 1.0)
            title = "Manage Payment"
            
            //Manage Payment
            let payment = UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 21))
//            payment.center = CGPoint(x: 100, y: 50)
//            payment.textAlignment = .center
            payment.text = "Your Cards"
            self.view.addSubview(payment)
            //Icon Visa  - some visa card x4548 end
            //Icon ApplePay - Apple Pay
            
            let image = UIImage(named: "visa")
            let imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: 100, y: 230, width: 60, height: 50)
            self.view.addSubview(imageView)
            
            let savedCard = UILabel()
            savedCard.text = "x4547"
            savedCard.frame = CGRect(x: 170, y: 230, width: 60, height: 50)
            self.view.addSubview(savedCard)
            
            
            let trash = UIButton()
            trash.setImage(UIImage(systemName: "trash"), for: .normal)
            trash.frame = CGRect(x: 220, y: 230, width: 60, height: 50)
            self.view.addSubview(trash)

            
            let card = UILabel(frame: CGRect(x: 100, y: 395, width: 200, height: 21))
//            card.center = CGPoint(x: 100, y: 395)
//            card.textAlignment = .center
            card.text = "Add Credit/Debit card"
            self.view.addSubview(card)

            
            let cardNumber =  UITextField(frame: CGRect(x: 25, y: 430, width: 305, height: 40))
            cardNumber.placeholder = "Card Number"
            cardNumber.font = UIFont.systemFont(ofSize: 15)
            cardNumber.borderStyle = UITextField.BorderStyle.roundedRect
            cardNumber.autocorrectionType = UITextAutocorrectionType.no
            cardNumber.keyboardType = UIKeyboardType.default
            cardNumber.returnKeyType = UIReturnKeyType.done
            cardNumber.clearButtonMode = UITextField.ViewMode.whileEditing
            cardNumber.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
               self.view.addSubview(cardNumber)
            
            let date =  UITextField(frame: CGRect(x: 25, y: 480, width: 150, height: 40))
            date.placeholder = "mm/yy"
            date.font = UIFont.systemFont(ofSize: 15)
            date.borderStyle = UITextField.BorderStyle.roundedRect
            date.autocorrectionType = UITextAutocorrectionType.no
            date.keyboardType = UIKeyboardType.default
            date.returnKeyType = UIReturnKeyType.done
            date.clearButtonMode = UITextField.ViewMode.whileEditing
            date.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
               self.view.addSubview(date)
            
            let securityCode =  UITextField(frame: CGRect(x: 180, y: 480, width: 150, height: 40))
            securityCode.placeholder = "security code"
            securityCode.font = UIFont.systemFont(ofSize: 15)
            securityCode.borderStyle = UITextField.BorderStyle.roundedRect
            securityCode.autocorrectionType = UITextAutocorrectionType.no
            securityCode.keyboardType = UIKeyboardType.default
            securityCode.returnKeyType = UIReturnKeyType.done
            securityCode.clearButtonMode = UITextField.ViewMode.whileEditing
            securityCode.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
               self.view.addSubview(securityCode)
//number type for field?
            
            let name =  UITextField(frame: CGRect(x: 25, y: 530, width: 305, height: 40))
            name.placeholder = "Full Name"
            name.font = UIFont.systemFont(ofSize: 15)
            name.borderStyle = UITextField.BorderStyle.roundedRect
            name.autocorrectionType = UITextAutocorrectionType.no
            name.keyboardType = UIKeyboardType.default
            name.returnKeyType = UIReturnKeyType.done
            name.clearButtonMode = UITextField.ViewMode.whileEditing
            name.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
               self.view.addSubview(name)
            
            let address =  UITextField(frame: CGRect(x: 25, y: 580, width: 305, height: 40))
            address.placeholder = "Address"
            address.font = UIFont.systemFont(ofSize: 15)
            address.borderStyle = UITextField.BorderStyle.roundedRect
            address.autocorrectionType = UITextAutocorrectionType.no
            address.keyboardType = UIKeyboardType.default
            address.returnKeyType = UIReturnKeyType.done
            address.clearButtonMode = UITextField.ViewMode.whileEditing
            address.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
               self.view.addSubview(address)
            
            let city =  UITextField(frame: CGRect(x: 25, y: 630, width: 150, height: 40))
            city.placeholder = "City/State"
            city.font = UIFont.systemFont(ofSize: 15)
            city.borderStyle = UITextField.BorderStyle.roundedRect
            city.autocorrectionType = UITextAutocorrectionType.no
            city.keyboardType = UIKeyboardType.default
            city.returnKeyType = UIReturnKeyType.done
            city.clearButtonMode = UITextField.ViewMode.whileEditing
            city.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
               self.view.addSubview(city)
            
            let zipcode =  UITextField(frame: CGRect(x: 180, y: 630, width: 150, height: 40))
            zipcode.placeholder = "ZipCode"
            zipcode.font = UIFont.systemFont(ofSize: 15)
            zipcode.borderStyle = UITextField.BorderStyle.roundedRect
            zipcode.autocorrectionType = UITextAutocorrectionType.no
            zipcode.keyboardType = UIKeyboardType.default
            zipcode.returnKeyType = UIReturnKeyType.done
            zipcode.clearButtonMode = UITextField.ViewMode.whileEditing
            zipcode.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
               self.view.addSubview(zipcode)
            
            
            let button = UIButton(frame: CGRect(x: 25, y: 680, width: 300, height: 40))
            button.setTitle("Submit", for: .normal)
            button.setTitleColor(.systemBlue, for: .normal)
            self.view.addSubview(button)
           
           
            
            
            

        }
    }
    
    
}
