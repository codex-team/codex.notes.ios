//
//  ShowAllNotesModuleShowAllNotesModuleConfiguratorTests.swift
//  Notes
//
//  Created by Egor Petrov on 16/01/2018.
//  Copyright © 2018 Codex. All rights reserved.
//

import XCTest

class ShowAllNotesModuleModuleConfiguratorTests: XCTestCase {

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testConfigureModuleForViewController() {

    //given
    let viewController = ShowAllNotesModuleViewControllerMock()
    let configurator = ShowAllNotesModuleModuleConfigurator()

    //when
    configurator.configureModuleForViewInput(viewInput: viewController)

    //then
    XCTAssertNotNil(viewController.output, "ShowAllNotesModuleViewController is nil after configuration")
    XCTAssertTrue(viewController.output is ShowAllNotesModulePresenter, "output is not ShowAllNotesModulePresenter")

    let presenter: ShowAllNotesModulePresenter = viewController.output as! ShowAllNotesModulePresenter
    XCTAssertNotNil(presenter.view, "view in ShowAllNotesModulePresenter is nil after configuration")
    XCTAssertNotNil(presenter.router, "router in ShowAllNotesModulePresenter is nil after configuration")
    XCTAssertTrue(presenter.router is ShowAllNotesModuleRouter, "router is not ShowAllNotesModuleRouter")

    let interactor: ShowAllNotesModuleInteractor = presenter.interactor as! ShowAllNotesModuleInteractor
    XCTAssertNotNil(interactor.output, "output in ShowAllNotesModuleInteractor is nil after configuration")
  }

  class ShowAllNotesModuleViewControllerMock: ShowAllNotesModuleViewController {

    var setupInitialStateDidCall = false

    override func setupInitialState() {
      setupInitialStateDidCall = true
    }
  }
}
