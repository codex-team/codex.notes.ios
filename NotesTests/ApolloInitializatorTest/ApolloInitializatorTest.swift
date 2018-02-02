//
//  ApolloInitializatorTest.swift
//  NotesTests
//
//  Created by Egor Petrov on 01/02/2018.
//  Copyright © 2018 Egor Petrov. All rights reserved.
//

import XCTest

class ApolloInitializatorTest: XCTestCase {
  func testApolloInitialization() {
    ApolloInitializator.shared.setup()

    XCTAssertNotNil(mainApollo, "Appollo is nil!")
  }
}
