//
//  ViewController.swift
//  waterappviewcont
//
//  Created by Eli B. Maffry on 10/30/21.
//

import UIKit

class ViewController: UIViewController {

 //vars
  
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
      //  view.backgroundColor = .red
        
        
    }


}

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var label: UILabel!
    
    @IBOutlet var field: UITextField!
    
    let userDefaults = UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        field.delegate = self
        
        if let value = userDefaults.value(forKey: "name") as? String{
            
       //     let numValue = Int(value)
            
            label.text = value 
        }
        
       
    }
      
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //ds
      
        //john
        userDefaults.setValue(field.text, forKey: "name")
        
        field.resignFirstResponder()
        
        return true
    }
        
     
  
    
    /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //disposes of any resources that can be recreated
    }
    
    @IBAction func enterTapped(_ sender: Any) {
        
        textView.text = "User Name : \(addField.text!)\n"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        addField.resignFirstResponder()
    }
    
   
}
//add extend thing
extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
}*/



    class ProfileViewController: UIViewController {

        override func viewDidLoad() {
            super.viewDidLoad()
         
            
        //    view.backgroundColor = .blue
            
          
        }
        
    }

        class ColorViewController: UIViewController {

            override func viewDidLoad() {
                super.viewDidLoad()
             
                
          //      view.backgroundColor = .purple
                
                
            }
            
        }
}
