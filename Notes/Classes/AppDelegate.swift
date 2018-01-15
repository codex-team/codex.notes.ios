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
    let graphQlEndpoint = "https://api.notes.ifmo.su/graphql"
    let apollo = ApolloClient(url: URL(string: graphQlEndpoint)!)

    let query = GetUserQuery(id: "taly")
    apollo.fetch(query: query) { result, error in
      if let error = error {
        print("\(error)")
      }
      guard let infor = result?.data?.user else {
        return
      }
      print(infor)
    }
    return true
  }
}
