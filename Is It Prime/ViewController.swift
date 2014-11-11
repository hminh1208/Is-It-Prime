//
//  ViewController.swift
//  Is It Prime
//
//  Created by minh phan on 11/5/14.
//  Copyright (c) 2014 minh phan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var message: UILabel!
    
    @IBAction func pressed(sender: AnyObject) {
        
        var num = number.text.toInt()
        
        if (num != nil){
            if (num < 1){
                message.text = "Please enter a positive number"
            }else{
                if(number == 1){
                    message.text = "1 is not a prime"
                }else{
                    for var i = 2; i < num; i++ {
                        if (num! % i == 0){
                            message.text="\(num!) is not prime"
                            return;
                        }
                    }
                    message.text = "\(num!) is prime"
                }
            }
        }else{
            message.text = "Please enter a number!"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

