//
//  AppDelegate.swift
//  WhisperApp
//
//  Created by Eliasz Sawicki on 09/01/16.
//  Copyright © 2016 Eliasz Sawicki. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        ScreenNavigator.sharedInstance.setupNavigator()
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.rootViewController = ScreenNavigator.sharedInstance.rootNavigationController()
        self.window?.makeKeyAndVisible()
        return true
    }
}

