//
//  SettingViewController.swift
//  LEDboard
//
//  Created by Geun Woo Park on 2023/04/01.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .purple
    var backgroundColor: UIColor = .black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()    // receiving values from ViewController
    }
    
    // saving the contents saved in SettingViewController
    private func configureView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
        }
        
        self.changeTextColor(color: textColor)
        self.changeBackgroudnColor(color: backgroundColor)
    }
    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == self.purpleButton {
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        } else if sender == self.greenButton {
            self.changeTextColor(color: .green)
            self.textColor = .green
        } else {
            self.changeTextColor(color: .blue)
            self.textColor = .blue
        }
    }
    
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == self.blackButton {
            self.changeBackgroudnColor(color: .black)
            self.backgroundColor = .black
        } else if sender == self.yellowButton {
            self.changeBackgroudnColor(color: .yellow)
            self.backgroundColor = .yellow
        } else {
            self.changeBackgroudnColor(color: .orange)
            self.backgroundColor = .orange
        }
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        self.delegate?.changedSetting(
            text: self.textField.text,
            textColor: self.textColor,
            backgroundColor: self.backgroundColor
        )
        self.navigationController?.popViewController(animated: true)
        
    }
    
    private func changeTextColor(color: UIColor) {
        self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
        self.blueButton.alpha = color == UIColor.blue ? 1: 0.2
    }
    
    private func changeBackgroudnColor(color: UIColor) {
        self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
        self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.2
    }
}
