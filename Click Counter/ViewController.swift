//
//  ViewController.swift
//  Click Counter
//
//  Created by Khoa Vo on 9/2/15.
//  Copyright (c) 2015 AppSynth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var count2 = 1
    var label:UILabel!
    var label2:UILabel! // Add an additional label and have it increment with the first
    let colors = [UIColor.redColor(), UIColor.orangeColor(),
        UIColor.yellowColor(), UIColor.greenColor(),
        UIColor.blueColor(), UIColor.purpleColor(),
        UIColor.brownColor()]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label1
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label) // add label to view hierarchy
        self.label = label // allows view controller to set the label's text
        
        // Label2
        var label2 = UILabel()
        label2.frame = CGRectMake(250, 150, 60, 60)
        label2.text = "0"
        self.view.addSubview(label2) // add label to view hierarchy
        self.label2 = label2 // allows view controller to set the label's text
        
        // Increment Button
        var incrementButton = UIButton()
        incrementButton.frame = CGRectMake(75, 250, 100, 60)
        incrementButton.setTitle("Increment", forState: .Normal)
        incrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(incrementButton) // add button to view hierarchy
        
        incrementButton.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Add a decrement button
        var decrementButton = UIButton()
        decrementButton.frame = CGRectMake(200, 250, 100, 60)
        decrementButton.setTitle("Decrement", forState: .Normal)
        decrementButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(decrementButton) // add button to view hierarchy
        
        decrementButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Add an action that toggles the background color of the view with each click
        var changeBackgroundColor = UIButton()
        changeBackgroundColor.frame = CGRectMake(50, 350, 250, 60)
        changeBackgroundColor.setTitle("Change background color", forState: .Normal)
        changeBackgroundColor.setTitleColor(UIColor.greenColor(), forState: .Normal)
        self.view.addSubview(changeBackgroundColor) // add button to view hierarchy
        
        changeBackgroundColor.addTarget(self, action: "toggleBackgroundColor", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount() {
        self.count++
        self.count2++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count2)"
    }
    
    func decrementCount() {
        self.count--
        self.count2--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count2)"
    }
    
    // Generate random color from 'colors' array
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
    
    func toggleBackgroundColor() {
        self.view.backgroundColor = randomColor()
    }

}
