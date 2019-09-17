//
//  ViewController.swift
//  calculator
//
//  Created by ayman on 8/8/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var t1: UITextField!
    
    @IBOutlet weak var t2: UITextField!
    
    @IBOutlet weak var char: UITextField!
    
    @IBOutlet weak var res: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clear(_ sender: Any) {
        t1.text=""
        t2.text=""
        char.text=""
        res.text=""
    }
    
    @IBAction func result(_ sender: Any) {
        
        let v1:Double = Double(t1.text!)!
        let v2:Double = Double(t2.text!)!
        let c:String = char.text!
        switch c {
        case "+":
            res.text=String((v1+v2))
            break
            
        case "-":
            res.text=String((v1-v2))
            break
            
        case "*":
            res.text=String((v1*v2))
            break
            
        case "/":
            res.text=String((v1/v2))
            break
        default:
            res.text="----"
            
        }
    }
    
    
}

