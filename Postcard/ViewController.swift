//
//  ViewController.swift
//  Postcard
//
//  Created by Katrin Koch on 21.10.14.
//  Copyright (c) 2014 Cat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextfield: UITextField!
    
    @IBOutlet weak var enterMessageTextfield: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextfield.text;
        enterMessageTextfield.text = ""
        enterMessageTextfield.resignFirstResponder()
        messageLabel.textColor = UIColor.blueColor()
        mailButton.setTitle("Mail has been sent...", forState: UIControlState.Normal)
    }

}

