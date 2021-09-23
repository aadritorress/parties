//
//  ViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 135, y: 670, width: 150, height: 60)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.setTitle("LOG IN", for: .normal)
        button.setTitleColor(.white, for: .normal)
        let image = UIImage(named: "button") as UIImage?
        button.setImage(image, for: .normal)
        
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        print("loaded")
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

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        button.center = view.center
    }
    
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
    }
}

//class ThirdViewController: UIViewController {
//    override func viewDidLoad() {
//        view.backgroundColor = .lightGray
//        title = "My Account"
//    }
//}

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .lightGray
        title = "Saved"
    }
}

//class FifthViewController: UIViewController {
//    override func viewDidLoad() {
//        view.backgroundColor = .lightGray
//        title = "Host a Party"
//    }

