//
//  Problem2ViewController.swift
//  MBakerAssignment2
//
//  Created by Monica Baker on 10/16/16.
//  Copyright © 2016 Monica Baker. All rights reserved.
//

import UIKit

class Problem2ViewController: UIViewController {

    
    @IBOutlet weak var textView: UITextView!
    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 2"
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func RunProb2(_ sender: UIButton) {
        print("Hey the button got pushed")
        textView.text = Date().description
    }
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
