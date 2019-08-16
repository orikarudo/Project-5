//
//  ViewController2.swift
//  Project 5
//
//  Created by Ori Karudo on 8/14/19.
//  Copyright © 2019 Ori Karudo. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var tempLabel: UILabel!
    var temp = ""
    @IBOutlet weak var tempImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tempLabel.text = self.temp
        
        let dTemp = Double(self.temp)
        
        if(dTemp! < 40.0){
            
        }
        else if(dTemp! >= 40.0 && dTemp! < 75.0){
            
        }
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
