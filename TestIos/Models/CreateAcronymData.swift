//
//  CreateAcronymData.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 09/09/23.
//

import Foundation

struct CreateAcronymData: Codable {
  let short: String
  let long: String
  let userID: UUID
}

extension Acronym {
  func toCreateData() -> CreateAcronymData {
    CreateAcronymData(short: self.short, long: self.long, userID: self.user.id)
  }
}
