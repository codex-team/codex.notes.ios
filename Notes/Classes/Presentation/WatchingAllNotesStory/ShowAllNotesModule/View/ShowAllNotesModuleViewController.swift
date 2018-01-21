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

  @IBOutlet var tableView: UITableView! {
    didSet {
      tableView.register(NoteTableViewCell.nib,
                         forCellReuseIdentifier: NoteTableViewCell.identifier)
    }
  }

  // MARK: Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    output.viewIsReady()
  }

  // MARK: ShowAllNotesModuleViewInput
  func setupInitialState() {
    tableView.delegate = self
    tableView.dataSource = self
  }
}

extension ShowAllNotesModuleViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return output.getCountOfNotes()
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return output.createCell(for: indexPath)
  }
}

extension ShowAllNotesModuleViewController: UITableViewDelegate {
  
}
