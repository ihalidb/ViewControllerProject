//
//  ViewController.swift
//  ViewControllerProject
//
//  Created by İbrahim Halid Bayrak on 29.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birinciLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var alinanSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func kontrolEtTiklandi(_ sender: Any) {
        
        alinanSifre = textField.text!
        
        if alinanSifre == "ykwiam" || alinanSifre.lowercased() == "ykwiam" {
            
            performSegue(withIdentifier: "toIkinciVC", sender: nil)
            
        } else {
            
            birinciLabel.text = "Doğru isim giremediniz!"
            
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toIkinciVC"{
            
            let destinationVC = segue.destination as! IkinciViewController
            destinationVC.verilenSifre = alinanSifre.lowercased()
            
        }
    }
    
    
}
