//
//  HostViewController.swift
//  Parties
//
//  Created by Adri Torres on 9/23/21.
//

import UIKit

class HostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Host a Party"
        
        assignbackground()
        form()
    }
    
    
    
    
    func form(){
        
        let label = UILabel(frame: CGRect(x: 120, y: 170, width: 300, height: 40))
        label.text = "Form"
        label.textColor = .brown
        label.numberOfLines = 0
        label.font = UIFont(name:"Georgia", size: 20.0)
        self.view.addSubview(label)
        
        let name =  UITextField(frame: CGRect(x: 20, y: 250, width: 300, height: 40))
        name.placeholder = "Full Name"
        name.font = UIFont.systemFont(ofSize: 15)
        name.borderStyle = UITextField.BorderStyle.roundedRect
        name.autocorrectionType = UITextAutocorrectionType.no
        name.keyboardType = UIKeyboardType.default
        name.returnKeyType = UIReturnKeyType.done
        name.clearButtonMode = UITextField.ViewMode.whileEditing
        name.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(name)
        
        let address =  UITextField(frame: CGRect(x: 20, y: 300, width: 300, height: 40))
        address.placeholder = "Address"
        address.font = UIFont.systemFont(ofSize: 15)
        address.borderStyle = UITextField.BorderStyle.roundedRect
        address.autocorrectionType = UITextAutocorrectionType.no
        address.keyboardType = UIKeyboardType.default
        address.returnKeyType = UIReturnKeyType.done
        address.clearButtonMode = UITextField.ViewMode.whileEditing
        address.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(address)
        
        
        let date =  UITextField(frame: CGRect(x: 20, y: 350, width: 300, height: 40))
        date.placeholder = "Date"
        //add UIDatePicker
        date.font = UIFont.systemFont(ofSize: 15)
        date.borderStyle = UITextField.BorderStyle.roundedRect
        date.autocorrectionType = UITextAutocorrectionType.no
        date.keyboardType = UIKeyboardType.default
        date.returnKeyType = UIReturnKeyType.done
        date.clearButtonMode = UITextField.ViewMode.whileEditing
        date.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(date)
        
        
        let guestcapacity =  UITextField(frame: CGRect(x: 20, y: 400, width: 300, height: 40))
        guestcapacity.placeholder = "Guest Capacity"
        guestcapacity.font = UIFont.systemFont(ofSize: 15)
        guestcapacity.borderStyle = UITextField.BorderStyle.roundedRect
        guestcapacity.autocorrectionType = UITextAutocorrectionType.no
        guestcapacity.keyboardType = UIKeyboardType.default
        guestcapacity.returnKeyType = UIReturnKeyType.done
        guestcapacity.clearButtonMode = UITextField.ViewMode.whileEditing
        guestcapacity.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(guestcapacity)
        
        let button = UIButton(frame: CGRect(x: 0, y: 450, width: 300, height: 40))
        button.setTitle("Send", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(formSent), for: .touchUpInside)
    }
    
    func assignbackground(){
          let background = UIImage(named: "backgroundVC")

          var imageView : UIImageView!
          imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
          imageView.clipsToBounds = true
          imageView.image = background
          imageView.center = view.center
          view.addSubview(imageView)
      }
    
    @objc func formSent() {
        print("form sent")
        
        let alert = UIAlertController(title: "Thanks", message: "We will get back to you soon!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        form()
    }
  
}

