//
//  ApolloInitializator.swift
//  Notes
//
//  Created by Egor Petrov on 01/02/2018.
//  Copyright © 2018 Egor Petrov. All rights reserved.
//

import Foundation
import Apollo

var mainApollo: ApolloClient!

class ApolloInitializator {
  static var shared: ApolloInitializator = ApolloInitializator()

  func setup() {
    let configuration = URLSessionConfiguration.default
    configuration.httpAdditionalHeaders = ["Authorization": "Bearer \(Server.header)"]
    mainApollo = ApolloClient(networkTransport: HTTPNetworkTransport(url: Server.endPoint,
                                                                     configuration: configuration))
  }
}
