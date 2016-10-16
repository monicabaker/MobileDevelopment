//
//  Problem3ViewController.swift
//  MBakerAssignment2
//
//  Created by Monica Baker on 10/9/16.
//  Copyright © 2016 Monica Baker. All rights reserved.
//

import UIKit

class Problem3ViewController: UIViewController {

    @IBOutlet weak var TextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 3"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RunProb3(_ sender: UIButton) {
    
        print("Hey the Run Prob3! button got pushed")
        TextView.text = Date().description
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
