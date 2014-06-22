//
//  AppDelegate.swift
//  BeaconManager
//
//  Created by Piet Brauer on 22/06/14.
//  Copyright (c) 2014 Piet Brauer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?
    var manager: BeaconManager?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)

        manager = BeaconManager()

        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()

        manager?.start()

        return true
    }

    func applicationDidBecomeActive(application: UIApplication!) {
        manager?.start()
    }
}

