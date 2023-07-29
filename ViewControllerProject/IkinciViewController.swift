//
//  IkinciViewController.swift
//  ViewControllerProject
//
//  Created by İbrahim Halid Bayrak on 29.07.2023.
//

import UIKit

class IkinciViewController: UIViewController {

    @IBOutlet weak var ikinciLabel: UILabel!
    
    @IBOutlet weak var bulunanSifreLabel: UILabel!
    
    var verilenSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bulunanSifreLabel.text = verilenSifre
        
    }
    
    
}
