//
//  Server.swift
//  Notes
//
//  Created by Egor Petrov on 18/01/2018.
//  Copyright © 2018 Egor Petrov. All rights reserved.
//

import Foundation

enum Server {
  static var endPoint: URL {
    return URL(string: "https://api.notes.ifmo.su/graphql")!
  }

  //swiftlint:disable line_length
  static var header: String {
    return "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJDb2RlWCBOb3RlcyBBUEkgU2VydmVyIiwiYXVkIjoiQ29kZVggTm90ZXMgQXBwbGljYXRpb24iLCJpYXQiOjE1MTY0MzU5MDQsInVzZXJfaWQiOiI1YTYyZjljMDI2NjAyN2U5NGI1ODdkYjUiLCJuYW1lIjoiXHUwNDE1XHUwNDMzXHUwNDNlXHUwNDQwIFx1MDQxZlx1MDQzNVx1MDQ0Mlx1MDQ0MFx1MDQzZVx1MDQzMiIsImVtYWlsIjoicGV0cm92LmJ6Lm1vbG9kQGdtYWlsLmNvbSIsInBob3RvIjoiaHR0cHM6XC9cL2xoMy5nb29nbGV1c2VyY29udGVudC5jb21cLy1kdGN5aVhTQ3c5d1wvQUFBQUFBQUFBQUlcL0FBQUFBQUFBQUE0XC9kRlphUWpmRFFYWVwvcGhvdG8uanBnIiwiZ29vZ2xlX2lkIjoiMTEwMzUwNjkzNzU5ODc2Mzk0NzQ2In0.SZAPOA069d_-RkfHHALTqxNVF3ElEi_rbfTVPLBsBlo"
  }
}
