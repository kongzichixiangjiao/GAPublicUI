//
//  ViewController.swift
//  GAPublicUIDemo
//
//  Created by houjianan on 2020/4/8.
//  Copyright © 2020 houjianan. All rights reserved.
//

import UIKit
import GAToastFramework

class ViewController: UIViewController, GAShowWindowProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(NSHomeDirectory())
        
        self.view.ga_toast(message: "12312")
        
        
    }
    
}
