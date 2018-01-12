//  This file was automatically generated and should not be edited.

import Apollo

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query getUser($id: ID!) {\n  user(id: $id) {\n    __typename\n    name\n    folders {\n      __typename\n      id\n      notes {\n        __typename\n        id\n        title\n        content\n      }\n    }\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("user", arguments: ["id": GraphQLVariable("id")], type: .object(User.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(user: User? = nil) {
      self.init(snapshot: ["__typename": "Query", "user": user.flatMap { $0.snapshot }])
    }

    /// Return User by id
    public var user: User? {
      get {
        return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "user")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("folders", type: .list(.object(Folder.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String? = nil, folders: [Folder?]? = nil) {
        self.init(snapshot: ["__typename": "User", "name": name, "folders": folders.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// User's nickname
      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      /// User's folders
      public var folders: [Folder?]? {
        get {
          return (snapshot["folders"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Folder(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "folders")
        }
      }

      public struct Folder: GraphQLSelectionSet {
        public static let possibleTypes = ["Folder"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("notes", type: .list(.object(Note.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID? = nil, notes: [Note?]? = nil) {
          self.init(snapshot: ["__typename": "Folder", "id": id, "notes": notes.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Folder's unique identifier
        public var id: GraphQLID? {
          get {
            return snapshot["id"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        /// Notes list
        public var notes: [Note?]? {
          get {
            return (snapshot["notes"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Note(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "notes")
          }
        }

        public struct Note: GraphQLSelectionSet {
          public static let possibleTypes = ["Note"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("content", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID? = nil, title: String? = nil, content: String? = nil) {
            self.init(snapshot: ["__typename": "Note", "id": id, "title": title, "content": content])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Note's unique identifier
          public var id: GraphQLID? {
            get {
              return snapshot["id"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          /// Note's public title
          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          /// Note's content in the JSON-format
          public var content: String? {
            get {
              return snapshot["content"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }
        }
      }
    }
  }
}