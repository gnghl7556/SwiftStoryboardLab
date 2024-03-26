//
//  ViewController.swift
//  MyFourthApp_UpDownGame_MacOs
//
//  Created by Mac on 3/26/24.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var countTryLabel: NSTextField!
    @IBOutlet weak var inputTextField: NSTextField!
    @IBOutlet weak var logListLabel: NSTextField!
    @IBOutlet weak var statusViewLabel: NSTextFieldCell!
    
    var resultValue:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValue = (0...100).randomElement()!
        
        inputTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func selectValue(_ sender: NSButtonCell) {
        var inputValue = inputTextField.stringValue
        
        if inputValue.isEmpty {
            inputTextField.placeholderAttributedString = NSAttributedString(string: "값을 입력해주세요.", attributes: [.foregroundColor:NSColor.red, .font: NSFont.systemFont(ofSize: 16)])
        }else{
            if resultValue > Int(inputValue) ?? 0{
                statusViewLabel.stringValue = "UP"
            }else if resultValue == Int(inputValue) ?? 0 {
                statusViewLabel.stringValue = "정답입니다!"
            }else{
                statusViewLabel.stringValue = "Down"
            }
            logListLabel.stringValue += (inputTextField.stringValue + statusViewLabel.stringValue + "\n")
            
        }
        
    }
    
}

