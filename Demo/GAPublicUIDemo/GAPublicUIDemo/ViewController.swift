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
//        self.view.ga_toastSubmit_error(delay: 0, touchEnable: false)
        

        
        
        
        guard let bPath = Bundle.main.path(forResource:"Settings", ofType:"bundle") else { return }
        let b = Bundle.init(path: bPath)
        
        let v = b?.url
//        v.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
//        self.view.addSubview(v)
        

        guard let imgPath = b?.path(forResource: "WechatIMG9760", ofType: "jpeg") else { return }
        let img = UIImage.init(named: imgPath)
        let imgView = UIImageView(image: img)
        imgView.backgroundColor = UIColor.lightText
        imgView.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        self.view.addSubview(imgView)
    }
    
    
}

