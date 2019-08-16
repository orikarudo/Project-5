//
//  ViewController.swift
//  Project 5
//
//  Created by Ori Karudo on 8/14/19.
//  Copyright © 2019 Ori Karudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tempToPass = ""
    @IBOutlet weak var fahr: UITextField!
    
    @IBOutlet weak var celsius: UITextField!
    
    @IBOutlet var tempSlider: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func fahrChanged(_ sender: Any) {
        //now change the celsius too
        var holder = Double(fahr.text!)
        if(holder != nil){
            holder = (holder! - 32)
            holder = holder! * 5
            holder = holder! / 9
            celsius.text = NSString(format: "%.2f", holder!) as String
        }
        
        
    }
    
    
    @IBAction func celsiusChanged(_ sender: Any) {
        var holder = Double(celsius.text!)
        if(holder != nil){
            holder = holder! * 9/5
            holder = holder! + 32
            fahr.text = NSString(format: "%.2f", holder!) as String
        }
        
    }
    @IBAction func nextPage(_ sender: Any) {
        self.tempToPass = fahr.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! ViewController2
        nextVC.temp = self.tempToPass
    }
}

