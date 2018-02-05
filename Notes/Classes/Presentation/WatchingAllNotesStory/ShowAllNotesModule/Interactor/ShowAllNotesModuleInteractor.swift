//
//  ShowAllNotesModuleShowAllNotesModuleInteractor.swift
//  Notes
//
//  Created by Egor Petrov on 16/01/2018.
//  Copyright © 2018 Codex. All rights reserved.
//

class ShowAllNotesModuleInteractor: ShowAllNotesModuleInteractorInput {
  weak var output: ShowAllNotesModuleInteractorOutput!

  var notes: [NotesPlainObject] = []

  func getUserNotes(for userId: String) {
    let notesGetter = UserNotesGetter(for: userId)
    notesGetter.fetchElements { [weak self] objects, error in
      if let error = error {
        self?.output.show(error)
        return
      }
      
      self?.notes = objects
      self?.output.loadIsReady()
    }
  }
}
