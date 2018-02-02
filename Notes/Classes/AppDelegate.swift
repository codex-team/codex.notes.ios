//
//  AppDelegate.swift
//  Notes
//
//  Created by Egor Petrov on 11/01/2018.
//  Copyright © 2018 Egor Petrov. All rights reserved.
//

import UIKit
import Apollo

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    ApolloInitializator.shared.setup()
    return true
  }
}
