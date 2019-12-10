//
//  AppDelegate.swift
//  ACE
//
//  Created by apple on 20/11/19.
//  Copyright © 2019 apple. All rights reserved.
// https://github.com/imaginary-cloud/CameraManager

import UIKit
import QuartzCore

@UIApplicationMain

@available(iOS 13.0, *)

class AppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        if (window?.rootViewController == nil){}
        self.window?.makeKeyAndVisible()
        return true
    }
    

    // MARK: UISceneSession Lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration
    {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>)
    {
    }


}

