//
//  ViewController.swift
//  AppTwo
//
//  Created
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
        changeModes(newMode: .addition)
        
    }
    
    @IBAction func didPressSubtraction(_ sender: Any) {
        changeModes(newMode: .subtraction)
        
    }
    @IBAction func didPressEqual(_ sender: Any) {
        guard let labelInt:Int = Int(labelString) else
            {return}
        if (currentMode == .not_set || lastButtonWasMode)
            {return}
        if (currentMode == .addition)
            { savedNum += labelInt}
        else if (currentMode == .subtraction)
            { savedNum -= labelInt}
        print(savedNum)
        labelString = "\(savedNum)"
        lastButtonWasMode = true
        currentMode = .not_set
        updateText()
    }
    
    @IBAction func didPressClear(_ sender: Any) {
        labelString = "0"
        currentMode = .not_set
        savedNum = 0
        label.text = "0"
        lastButtonWasMode = false
    }
    
    
    @IBAction func didPressNUm(_ sender: UIButton) {
        
        let stringValue:String? = sender.titleLabel?.text
        if lastButtonWasMode
                {labelString = "0"
                 lastButtonWasMode = false}
        
        labelString = labelString.appending(stringValue!)
        updateText()
        
    }
    
    func updateText() {
        guard let labelInt:Int = Int(labelString) else
            {return}
        label.text = "\(labelInt)"
        if currentMode == .not_set
            { savedNum = labelInt}
    }
    
    func changeModes(newMode:modes){
        if labelString == "0" { return }
        currentMode = newMode
        lastButtonWasMode = true
        
    }
    
    
    
    
    
}

