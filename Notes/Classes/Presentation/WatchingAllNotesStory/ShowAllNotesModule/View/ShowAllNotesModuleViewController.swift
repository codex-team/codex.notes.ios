//
//  ShowAllNotesModuleShowAllNotesModuleViewController.swift
//  Notes
//
//  Created by Egor Petrov on 16/01/2018.
//  Copyright © 2018 Codex. All rights reserved.
//

import UIKit

class ShowAllNotesModuleViewController: UIViewController, ShowAllNotesModuleViewInput {

  var output: ShowAllNotesModuleViewOutput!

  // MARK: Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    output.viewIsReady()
  }

  // MARK: ShowAllNotesModuleViewInput
  func setupInitialState() {
  }
}
