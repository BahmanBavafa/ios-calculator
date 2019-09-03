//
//  ViewController.swift
//  AppTwo
//
//  Created by Christopher Ching on 2017-09-25.
//  Copyright © 2017 haj bahaman. All rights reserved.
//

import UIKit

enum modes {
    case not_set
    case addition
    case subtraction}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    var labelString:String = "0"
    var currentMode:modes = .not_set
    var savedNum:Int = 0
    var lastButtonWasMode:Bool = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPressplus(_ sender: Any) {

        
    }
    
    @IBAction func didPressSubtraction(_ sender: Any) {
        
    }
    @IBAction func didPressEqual(_ sender: Any) {
        
    }
    
    @IBAction func didPressClear(_ sender: Any) {
        
    }
    
    
    @IBAction func didPressNUm(_ sender: UIButton) {
        let stringValue:String? = sender.titleLabel?.text
        labelString = labelString.appending(stringValue!)
        
        updateText()
        
    }
    
    func updateText() {
        guard let labelInt:Int = Int(labelString) else {
            return
        }
       label.text = "\(labelInt)"
    }
    
    func changeModes(newMode:modes){
        
    }
    
    
    
    
    
}

