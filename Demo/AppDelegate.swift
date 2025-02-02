//
//  AppDelegate.swift
//  Neon
//
//  Created by Mike on 9/16/15.
//  Copyright © 2015 Mike Amaral. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        
        // The facebook example from the README.... Don't ask why the file name is FacebookProfileExampleViewController
        // but the class referenced here is TwitterProfileExampleViewController... I didn't realize you can't yet refactor
        // swift code, and somehow this still works...
        UINavigationBar.appearance().barTintColor = UIColor(red: 80/255.0, green: 108/255.0, blue: 163/255.0, alpha: 1.0)
        UINavigationBar.appearance().isTranslucent = false
        window?.rootViewController = UINavigationController(rootViewController: TwitterProfileExampleViewController())
        
        // Used for tinkering and testing new methods - uncomment this out if you want to experiment!
//        window?.rootViewController = TestViewController()
        
        // This is crazy-complex demo I have on the README. Uncomment this out to experience with that as well,
        // although I really built it for iPads.
//        window?.rootViewController = ViewController()
        
        window?.makeKeyAndVisible()
    }
}
