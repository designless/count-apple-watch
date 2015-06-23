//
//  ViewController.swift
//  Count
//
//  Created by Naoki Kanazawa on 2015/06/23.
//  Copyright (c) 2015年 Naoki Kanazawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {}
    
    
    var number: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
        if number >= 3 {
            label.textColor = UIColor.blueColor()
        }

    }

    @IBAction func minus() {
        number = number - 1
        label.text = String(number)
    }
   
    @IBAction func clear() {
        number = 0
        label.text = String(number)
    }
    
}

