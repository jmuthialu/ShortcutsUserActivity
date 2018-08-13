//
//  AppDelegate.swift
//  ShortCutsNSUserActivity
//
//  Created by Jay Muthialu on 8/13/18.
//  Copyright © 2018 Jay Muthialu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool {
        if userActivityType == "com.glintpod.ShortCutsNSUserActivity123.Simple" {
            if let vc = window?.rootViewController as? ViewController {
                vc.testAlert()
                return true
            }
        }
        return false
    }

    


}

