//
//  ViewController.swift
//  08 - Persistant Storage
//
//  Created by Marco Linhares on 6/13/15.
//  Copyright (c) 2015 Marco Linhares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set a permanent variable myName and gives its value to Marco
        NSUserDefaults.standardUserDefaults().setObject("Marco", forKey: "myName")
        
        // save permanently on phone memory
        NSUserDefaults.standardUserDefaults().synchronize()
        
        // accessing the object value
        println (NSUserDefaults.standardUserDefaults().objectForKey("myName")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

