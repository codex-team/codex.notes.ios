//
//  DataFetcherProtocol.swift
//  Notes
//
//  Created by Egor Petrov on 02/02/2018.
//  Copyright © 2018 Egor Petrov. All rights reserved.
//

import Foundation
import Apollo

protocol DataFetcherProtocol {
  associatedtype Value = PlainObjectType

  typealias CompletionHandler = ([Value], Error?) -> Void
  func fetchElements(with completionHandler: @escaping CompletionHandler)
}
