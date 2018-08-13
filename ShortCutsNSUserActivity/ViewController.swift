//
//  ViewController.swift
//  ShortCutsNSUserActivity
//
//  Created by Jay Muthialu on 8/13/18.
//  Copyright © 2018 Jay Muthialu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        donateUserActivity()
    }

    func donateUserActivity() {
        let activity = NSUserActivity(activityType: "com.glintpod.ShortCutsNSUserActivity123.Simple")
        activity.title = "Simple"
        activity.userInfo = ["simple": "simpleTest"]
        activity.isEligibleForPrediction = true
        activity.isEligibleForSearch = true
        activity.persistentIdentifier = "com.glintpod.ShortCutsNSUserActivity123.Simple"
        view.userActivity = activity
        activity.becomeCurrent()
    }
    
    func testAlert() {
        let alert = UIAlertController(title: "Test Alert", message: "Shortcuts test", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true)
    }

}

