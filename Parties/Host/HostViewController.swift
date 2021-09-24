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
        
        let datePicker: UIDatePicker = UIDatePicker()
        datePicker.frame = CGRect(x: 25, y: 530, width: 350, height: 40)
        datePicker.timeZone = NSTimeZone.local
        datePicker.preferredDatePickerStyle = .wheels
        self.view.addSubview(datePicker)
    }
    
    
    
    
    func form(){
        
        let label = UILabel(frame: CGRect(x: 90, y: 170, width: 300, height: 40))
        label.text = "Apply to host a L Party!"
        label.textColor = .brown
        label.numberOfLines = 0
        label.font = UIFont(name:"Georgia", size: 20.0)
        self.view.addSubview(label)
        
        let name =  UITextField(frame: CGRect(x: 25, y: 235, width: 300, height: 40))
        name.placeholder = "Full Name"
        name.font = UIFont.systemFont(ofSize: 15)
        name.borderStyle = UITextField.BorderStyle.roundedRect
        name.autocorrectionType = UITextAutocorrectionType.no
        name.keyboardType = UIKeyboardType.default
        name.returnKeyType = UIReturnKeyType.done
        name.clearButtonMode = UITextField.ViewMode.whileEditing
        name.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(name)
        
        let email =  UITextField(frame: CGRect(x: 25, y: 290, width: 300, height: 40))
        email.placeholder = "Email"
        email.font = UIFont.systemFont(ofSize: 15)
        email.borderStyle = UITextField.BorderStyle.roundedRect
        email.autocorrectionType = UITextAutocorrectionType.no
        email.keyboardType = UIKeyboardType.default
        email.returnKeyType = UIReturnKeyType.done
        email.clearButtonMode = UITextField.ViewMode.whileEditing
        email.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(email)
        
        
        let phoneNumber =  UITextField(frame: CGRect(x: 25, y: 345, width: 300, height: 40))
        phoneNumber.placeholder = "Phone Number"
        phoneNumber.font = UIFont.systemFont(ofSize: 15)
        phoneNumber.borderStyle = UITextField.BorderStyle.roundedRect
        phoneNumber.autocorrectionType = UITextAutocorrectionType.no
        phoneNumber.keyboardType = UIKeyboardType.default
        phoneNumber.returnKeyType = UIReturnKeyType.done
        phoneNumber.clearButtonMode = UITextField.ViewMode.whileEditing
        phoneNumber.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(phoneNumber)
        
        //venue type *select - residential // comercial
        //disabled access *select - yes // no
        //indoor/outdoor *select indoor/outdoor
        
        
        let address =  UITextField(frame: CGRect(x: 25, y: 400, width: 300, height: 40))
        address.placeholder = "Address"
        address.font = UIFont.systemFont(ofSize: 15)
        address.borderStyle = UITextField.BorderStyle.roundedRect
        address.autocorrectionType = UITextAutocorrectionType.no
        address.keyboardType = UIKeyboardType.default
        address.returnKeyType = UIReturnKeyType.done
        address.clearButtonMode = UITextField.ViewMode.whileEditing
        address.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(address)
        
        
        let guestcapacity =  UITextField(frame: CGRect(x: 25, y: 455, width: 300, height: 40))
        guestcapacity.placeholder = "Guest Capacity"
        guestcapacity.font = UIFont.systemFont(ofSize: 15)
        guestcapacity.borderStyle = UITextField.BorderStyle.roundedRect
        guestcapacity.autocorrectionType = UITextAutocorrectionType.no
        guestcapacity.keyboardType = UIKeyboardType.default
        guestcapacity.returnKeyType = UIReturnKeyType.done
        guestcapacity.clearButtonMode = UITextField.ViewMode.whileEditing
        guestcapacity.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(guestcapacity)
        
        
        let dateLabel = UILabel(frame: CGRect(x: 25, y: 500, width: 300, height: 40))
        dateLabel.text = "Date"
        dateLabel.textColor = .brown
        dateLabel.numberOfLines = 0
        dateLabel.font = UIFont(name:"Georgia", size: 15.0)
        self.view.addSubview(dateLabel)
        

//        let datePicker: UIDatePicker = UIDatePicker()
//        datePicker.frame = CGRect(x: 25, y: 530, width: 350, height: 40)
//        datePicker.timeZone = NSTimeZone.local
//        datePicker.preferredDatePickerStyle = .wheels
//        self.view.addSubview(datePicker)
        
        
        let button = UIButton(frame: CGRect(x: 25, y: 750, width: 300, height: 40))
        button.setTitle("Submit", for: .normal)
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

