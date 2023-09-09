//
//  User.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 09/09/23.
//

import Foundation

final class User: Codable {
  var id: UUID?
  var name: String
  var username: String

  init(name: String, username: String) {
    self.name = name
    self.username = username
  }
}
