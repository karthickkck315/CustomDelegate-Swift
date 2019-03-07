//
//  SecondViewController.swift
//  CustomDelegate
//
//  Created by Apple on 07/03/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import Foundation


protocol CustomDelegate:NSObjectProtocol{
    func updateProcessStatus(string : String)
}
class SecondViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    var delegates:CustomDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.backgroundColor = .white
    }
    
    @IBAction func didTapOkAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        delegates?.updateProcessStatus(string : textField.text! )
    }
}
