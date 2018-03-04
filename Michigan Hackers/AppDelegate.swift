//
//  AppDelegate.swift
//  Michigan Hackers
//
//  Created by Connor Svrcek on 1/25/18.
//  Copyright © 2018 Connor Svrcek. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let tabBarController = UITabBarController()
        window?.rootViewController = tabBarController
        window?.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.3647058824, blue: 0.1411764706, alpha: 1)
        
        // Make the tab bar
        let events = EventController()
        events.tabBarItem = UITabBarItem(title: "Events", image: #imageLiteral(resourceName: "icons8-reminder-50"), tag: 0)
        
        let calendar = CalendarController()
        calendar.tabBarItem = UITabBarItem(title: "Calendar", image: #imageLiteral(resourceName: "icons8-calendar-50"), tag: 1)
        
        let notifications = NotificationController()
        notifications.tabBarItem = UITabBarItem(title: "Notifications", image: #imageLiteral(resourceName: "icons8-alarm-50"), tag: 2)
        
        let resources = Resources()
        resources.tabBarItem = UITabBarItem(title: "Resources", image: #imageLiteral(resourceName: "icons8-book-50"), tag: 3)
        
        let controllers = [events, calendar, notifications, resources]
        tabBarController.viewControllers = controllers.map {UINavigationController(rootViewController: $0) }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

