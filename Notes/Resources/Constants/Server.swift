//
//  Server.swift
//  Notes
//
//  Created by Egor Petrov on 18/01/2018.
//  Copyright © 2018 Egor Petrov. All rights reserved.
//

import Foundation

enum Server {
  static var endPoint: URL {
    return URL(string: "https://api.notes.ifmo.su/graphql")!
  }
}
