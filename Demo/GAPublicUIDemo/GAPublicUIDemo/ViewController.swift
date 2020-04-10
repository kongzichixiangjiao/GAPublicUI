//
//  ViewController.swift
//  GAPublicUIDemo
//
//  Created by houjianan on 2020/4/8.
//  Copyright © 2020 houjianan. All rights reserved.
//

import UIKit
import GAPublicUI
import GAExtension

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
        self.view.ga_toastSubmit_error(delay: 10, touchEnable: false)
    }
    
    
}

/*
 *  PXAlertOnlyBottomViewController是pod添加的GAAlertPresentation中的xib资源文件
 *  eg:
 *      let bundle = Bundle.ga_podBundle(aClass: PXAlertOnlyBottomViewController.classForCoder(), resource: "GAAlertPresentation")
 */
//static func ga_podBundle(aClass: Swift.AnyClass, resource: String) -> Bundle? {
//    let podBundle = Bundle(for: aClass)
//    let bundleURL = podBundle.url(forResource: resource, withExtension: "bundle")
//    let bundle = Bundle(url: bundleURL!)
//    return bundle
//}
