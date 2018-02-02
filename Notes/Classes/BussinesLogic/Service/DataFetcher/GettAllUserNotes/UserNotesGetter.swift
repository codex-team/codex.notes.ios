//
//  UserNotesGetter.swift
//  Notes
//
//  Created by Egor Petrov on 01/02/2018.
//  Copyright © 2018 Egor Petrov. All rights reserved.
//

import Foundation
import Apollo

class UserNotesGetter: DataFetcherProtocol {
  var query: GetUserNotesQuery

  init(for userId: String) {
    self.query = GetUserNotesQuery(id: userId)
  }

  func fetchElements(with completionHandler: @escaping ([NotesPlainObject], Error?) -> Void) {
    mainApollo.fetch(query: query) { result, error in
      var noteObjects: [NotesPlainObject] = []
      if let error = error {
        completionHandler([], error)
        return
      }

      guard let data = result,
            let folders = data.data?.user?.folders else {
        return
      }

      folders.forEach { folder in
        guard let folder = folder,
          let notes = folder.notes,
          !notes.isEmpty else {
            return
        }

        notes.forEach { note in
          guard let note = note,
                let id = note.id,
                let title = note.title,
                let content = note.content else {
            return
          }
          let noteObject = NotesPlainObject(id: id, title: title, content: content)
          noteObjects.append(noteObject)
        }
      }
      DispatchQueue.main.async {
        completionHandler(noteObjects, nil)
      }
    }
  }
}
