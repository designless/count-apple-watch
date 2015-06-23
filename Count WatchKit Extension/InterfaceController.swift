//
//  InterfaceController.swift
//  Count WatchKit Extension
//
//  Created by Naoki Kanazawa on 2015/06/23.
//  Copyright (c) 2015年 Naoki Kanazawa. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var number: Int = 0
    @IBOutlet weak var label: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    @IBAction func plus() {
        number = number + 1
        label.setText(String(number))
        if number >= 5 {
            label.setTextColor(UIColor(red:59/255,green:255/255,blue:199/255,alpha:1.0))
        }
    }
    @IBAction func minus() {
        number = number - 1
        label.setText(String(number))
    }
    @IBAction func clear() {
        number = 0
        label.setText(String(number))
    }
}
