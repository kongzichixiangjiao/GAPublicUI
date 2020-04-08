//
//  AppDelegate.swift
//  GAPublicUIDemo
//
//  Created by houjianan on 2020/4/8.
//  Copyright © 2020 houjianan. All rights reserved.
//

import UIKit
import GAPublicUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        DispatchQueue.main.fw_after(2.0) {
            GAFloatWindow.show {
                let vc = GAFloatWindowViewController(nibName: "GAFloatWindowViewController", bundle: nil)
                self.window?.rootViewController?.present(vc, animated: true, completion: nil)
            }
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

