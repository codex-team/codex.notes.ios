//
//  ShowAllNotesModuleShowAllNotesModuleInteractorOutput.swift
//  Notes
//
//  Created by Egor Petrov on 16/01/2018.
//  Copyright © 2018 Codex. All rights reserved.
//

import Foundation

protocol ShowAllNotesModuleInteractorOutput: class {
  func show(_ error: Error)
  func loadIsReady()
}
