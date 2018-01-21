//
//  ShowAllNotesModuleShowAllNotesModuleViewOutput.swift
//  Notes
//
//  Created by Egor Petrov on 16/01/2018.
//  Copyright © 2018 Codex. All rights reserved.
//

import UIKit

protocol ShowAllNotesModuleViewOutput {

  /**
   @author Egor Petrov
   Notify presenter that view is ready
   */
  
  func viewIsReady()
  
  func getCountOfNotes() -> Int
  func createCell(for indexPath: IndexPath) -> UITableViewCell
}
