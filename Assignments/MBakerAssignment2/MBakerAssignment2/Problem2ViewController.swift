//
//  Problem2ViewController.swift
//  MBakerAssignment2
//
//  Created by Monica Baker on 10/23/16.
//  Copyright © 2016 Monica Baker. All rights reserved.
//

import Foundation
import UIKit

class Problem2ViewController: UIViewController {
    
    
    @IBOutlet weak var TextView: UITextView!
    
    @IBAction func Step(_ sender: AnyObject) {
        
        TextView.text = ("Hey the button got pushed!")
        
        let arrayElement = [Bool](repeating: false, count: 10)
        var before = [[Bool]](repeating: arrayElement, count: 10)
        // i is the columns and j is the rows
        for i in 0 ..< arrayElement.count {
            for j in 0 ..< before.count {
                if arc4random_uniform(3) == 1 {
                    var row = before[j]
                    row[i] = true
                    before[j] = row
                    
                }
            }
        }
        
        let numberOfTrue = (0 ..< before.count).reduce(0) { (accum, row) in
            return accum + before[row].filter { $0 }.count
        }
        
        
        var after = [[Bool]](repeating: arrayElement, count: 10)
        for i in 0 ..< arrayElement.count {
            for j in 0 ..< before.count {
                typealias Position = (x: Int, y: Int)
                
                let offsets: [Position] = [
                    (x: -1, y: 1) , (x: 0, y: 1 ), (x: 1, y: 1 ),
                    (x: -1, y: 0) ,                (x: 1, y: 0 ),
                    (x: -1, y: -1), (x: 0, y: -1), (x: 1, y: -1)
                ]
                
                var neighbors = offsets.map {
                    (x: ((i + $0.x) + arrayElement.count) % arrayElement.count,
                     y: ((j + $0.y) + before.count) % before.count)
                }
                print (neighbors)
                
                var livingNeighbors = neighbors.reduce(0) {
                    print("Column = \($1.x), Row = \($1.y), alive = \( before[$1.y][$1.x])")
                    return before[$1.y][$1.x] ? $0 + 1 : $0
                }
                print (livingNeighbors)
                
                var willLive = false
                switch livingNeighbors {
                case 2 where before [j][i],
                     3:
                    willLive = true
                default:
                    willLive = false
                }
                print ("Row = \(j), Column = \(i), living Neighbors = \(livingNeighbors), current value = \(before[j][i]),\(willLive)")
                
                after[j][i] = willLive
            }
            
        }
        TextView.text = ("There are \(numberOfTrue) Living Cells here")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 2"
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

