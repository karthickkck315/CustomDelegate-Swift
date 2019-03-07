//
//  ViewController.swift
//  CustomDelegate
//
//  Created by Apple on 07/03/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CustomDelegate {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapNxtAction(_ sender: Any) {
        let secondPage = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondPage.delegates = self
        self.navigationController?.pushViewController(secondPage, animated: true)
    }
    
    func updateProcessStatus(string : String) {
        label.text = string
    }
}

