//
//  AppState.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 09/09/23.
//

import Foundation
//import GroceryAppSharedDTO

//enum GroceryAppError: Error {
//    case login
//}

enum Route: Hashable {
//    case login
//    case register
//    case groceryCategoryList
//    case groceryCategoryDetail(GroceryCategoryResponseDTO)
    case acronymsList
    case usersList
    case categoriesList
}

class AppState: ObservableObject{
    @Published var routes: [Route] = []
    @Published var errorWrapper: ErrorWrapper?
}
