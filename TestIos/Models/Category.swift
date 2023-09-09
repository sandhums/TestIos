//
//  Category.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 09/09/23.
//

import Foundation

final class Category: Codable {
  var id: UUID?
  var name: String

  init(name: String) {
    self.name = name
  }
}
