//
//  ViewController.swift
//  GAPublicUIDemo
//
//  Created by houjianan on 2020/4/8.
//  Copyright © 2020 houjianan. All rights reserved.
//

import UIKit
//import GAPublicUI

class ViewController: UIViewController, GAShowWindowProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.fw_after(0.5) {
            GAFloatWindow.initFloatWindow {
                
            }
            
            GAFloatWindow.show {
                
            }
        }
        
//        GAShowWindow.ga_show(message: "message")
//        GAShowWindow.ga_hideAll()
        self.view.ga_toastSubmit_error(delay: 0, touchEnable: false)
               
    }
    
    
}

