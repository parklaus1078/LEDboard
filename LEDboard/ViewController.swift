//
//  ViewController.swift
//  LEDboard
//
//  Created by Geun Woo Park on 2023/04/01.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {

    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .purple
        self.view.backgroundColor = .black
    }

    // to SettingViewController (1)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
            settingViewController.ledText = self.contentsLabel.text
            settingViewController.textColor = self.contentsLabel.textColor
            settingViewController.backgroundColor = self.view.backgroundColor ?? .black
        }
    }
    
    // follows protocol of SettingViewController:
    // receives the textField's text, textColor, and backgroundColor
    // changes the components with the received data.
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            self.contentsLabel.text = text
        }
        
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}

