//
//  ViewController.swift
//  StopWatch
//
//  Created by Ahmed Adel on 6/28/17.
//  Copyright © 2017 Ahmed Adel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var label: UILabel!
    
    var time = 0
    
    var timer = Timer()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startButton(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    

    @IBAction func pauseButton(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        
        timer.invalidate()
        time = 0
        label.text = String(0)
        
    }
    
    
    func action(){
        time += 1
        label.text = String(time)
    }
}

