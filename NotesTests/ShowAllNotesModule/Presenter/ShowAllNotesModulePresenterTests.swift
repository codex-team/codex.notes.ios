//
//  ShowAllNotesModuleShowAllNotesModulePresenterTests.swift
//  Notes
//
//  Created by Egor Petrov on 16/01/2018.
//  Copyright © 2018 Codex. All rights reserved.
//

import XCTest

class ShowAllNotesModulePresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: ShowAllNotesModuleInteractorInput {

    }

    class MockRouter: ShowAllNotesModuleRouterInput {

    }

    class MockViewController: ShowAllNotesModuleViewInput {

        func setupInitialState() {

        }
    }
}
