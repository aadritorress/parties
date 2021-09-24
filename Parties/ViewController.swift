//
//  ViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let signIn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 110, y: 710, width: 180, height: 40)
        button.layer.cornerRadius = 20
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = UIColor(red: 0.1804, green: 0.3882, blue: 0.0118, alpha: 1.0)
        return button
    }()
    
    private let createAccount: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 110, y: 760, width: 180, height: 40)
        button.layer.cornerRadius = 20
        button.setTitle("Create New Account", for: .normal)
        button.backgroundColor = UIColor(red: 0.1804, green: 0.3882, blue: 0.0118, alpha: 1.0)
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        view.addSubview(signIn)
        view.addSubview(createAccount)
        signIn.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        print("loaded")
        
        
        let label = UILabel(frame: CGRect(x: 90, y: 170, width: 300, height: 60))
        label.text = "The L App"
        label.textColor = UIColor(red: 0.1804, green: 0.3882, blue: 0.0118, alpha: 1.0)
        label.numberOfLines = 0
        label.font = UIFont(name:"Avenir Medium", size: 50.0)
        self.view.addSubview(label)
        
        
        
        let username =  UITextField(frame: CGRect(x: 100, y: 600, width: 200, height: 40))
        username.placeholder = "username"
        username.font = UIFont.systemFont(ofSize: 15)
        username.borderStyle = UITextField.BorderStyle.roundedRect
        username.autocorrectionType = UITextAutocorrectionType.no
        username.keyboardType = UIKeyboardType.default
        username.returnKeyType = UIReturnKeyType.done
        username.clearButtonMode = UITextField.ViewMode.whileEditing
        username.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(username)
        
        let password =  UITextField(frame: CGRect(x: 100, y: 650, width: 200, height: 40))
        password.placeholder = "password"
        password.font = UIFont.systemFont(ofSize: 15)
        password.borderStyle = UITextField.BorderStyle.roundedRect
        password.autocorrectionType = UITextAutocorrectionType.no
        password.keyboardType = UIKeyboardType.default
        password.returnKeyType = UIReturnKeyType.done
        password.clearButtonMode = UITextField.ViewMode.whileEditing
        password.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        password.isSecureTextEntry = true
           self.view.addSubview(password)
        
        
    }
    
    func assignbackground(){
          let background = UIImage(named: "background")

          var imageView : UIImageView!
          imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
          imageView.clipsToBounds = true
          imageView.image = background
          imageView.center = view.center
          view.addSubview(imageView)
      }

//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        button.center = view.center
//    }
    
    @objc func buttonPressed() {
        //create action
        let tabBarViewController = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: PartiesViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: AccountViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: HostViewController())
        
        vc1.title = "Parties"
        vc2.title = "My Tickets"
        vc3.title = "My Account"
        vc4.title = "Saved"
        vc5.title = "Host a Party"
        
        tabBarViewController.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
    
        guard let items = tabBarViewController.tabBar.items else {
            return
        }
        
        let images = ["music.house", "qrcode.viewfinder", "person", "heart.circle", "house"]
        
        for icon in 0..<items.count {
            items[icon].image = UIImage(systemName: images[icon])
        }
        
        
        tabBarViewController.modalPresentationStyle  = .fullScreen
    present(tabBarViewController, animated: true)
    }
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .lightGray
        title = "My Tickets"
        
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


class FourthViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .lightGray
        title = "Saved"
        
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

