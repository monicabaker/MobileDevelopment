//
//  Problem2ViewController.swift
//  MBakerAssignment2
//
//  Created by Monica Baker on 10/9/16.
//  Copyright © 2016 Monica Baker. All rights reserved.
//

import UIKit

class Problem2ViewController: UIViewController {
 
    @IBOutlet weak var textField: UITextField!
        
   override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 2"
        // Do any additional setup after loading the view, typically from a nib.
        }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
        
    @IBAction func performCalculation(_ sender: AnyObject) {
        print("Hey the button got pushed")
        textField.text = Date().description
        }

}
