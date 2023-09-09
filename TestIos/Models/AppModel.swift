//
//  AppModel.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 09/09/23.
//

import Foundation
//import GroceryAppSharedDTO

@MainActor
class AppModel: ObservableObject {
    
//    @Published var groceryCategories: [GroceryCategoryResponseDTO] = []
//    @Published var groceryItems: [GroceryItemResponseDTO] = []
//
//    @Published var groceryCategory: GroceryCategoryResponseDTO?
    @Published var acronyms: [Acronym] = []
    @Published var users: [User] = []
    @Published var categories: [Category] = []
    
    let httpClient = HTTPClient()
    
    func populateAcronyms() async throws {
  //
  //        guard let userId = UserDefaults.standard.userId else {
  //            return
  //        }
  //
        let resource = Resource(url: Constants.Urls.showAcronyms(), modelType: [Acronym].self)
          print(resource.url.absoluteString)
  
          acronyms = try await httpClient.load(resource)
      }
    func populateUsers() async throws {
        let resource = Resource(url: Constants.Urls.showUsers(), modelType: [User].self)
          print(resource.url.absoluteString)
  
          users = try await httpClient.load(resource)
      }
    func populateCategories() async throws {
        let resource = Resource(url: Constants.Urls.showCategories(), modelType: [Category].self)
          print(resource.url.absoluteString)
  
          categories = try await httpClient.load(resource)
      }
    
//    func register(username: String, password: String) async throws -> RegisterResponseDTO {
//
//        let registerData = ["username": username, "password": password]
//        let resource = try Resource(url: Constants.Urls.register, method: .post(JSONEncoder().encode(registerData)), modelType: RegisterResponseDTO.self)
//        let registerResponseDTO = try await httpClient.load(resource)
//        return registerResponseDTO
//    }
//
//    func logout() {
//        let defaults = UserDefaults.standard
//        defaults.removeObject(forKey: "userId")
//        defaults.removeObject(forKey: "authToken")
//    }
//
//    func login(username: String, password: String) async throws -> LoginResponseDTO {
//
//        let loginPostData = ["username": username, "password": password]
//
//        // resource
//        let resource = try Resource(url: Constants.Urls.login, method: .post(JSONEncoder().encode(loginPostData)), modelType: LoginResponseDTO.self)
//
//        let loginResponseDTO = try await httpClient.load(resource)
//
//        if !loginResponseDTO.error && loginResponseDTO.token != nil && loginResponseDTO.userId != nil {
//            // save the token in user defaults
//            let defaults = UserDefaults.standard
//            defaults.set(loginResponseDTO.token!, forKey: "authToken")
//            defaults.set(loginResponseDTO.userId!.uuidString, forKey: "userId")
//        }
//
//        return loginResponseDTO
//    }
    
//    func deleteGroceryItem(groceryCategoryId: UUID, groceryItemId: UUID) async throws {
//
//        guard let userId = UserDefaults.standard.userId else {
//            return
//        }
//
//        let resource = Resource(url: Constants.Urls.deleteGroceryItem(userId: userId, groceryCategoryId: groceryCategoryId, groceryItemId: groceryItemId), method: .delete, modelType: GroceryItemResponseDTO.self)
//
//        let deletedGroceryItem = try await httpClient.load(resource)
//        groceryItems = groceryItems.filter { $0.id != deletedGroceryItem.id }
//    }
//
//    func deleteGroceryCategory(groceryCategoryId: UUID) async throws {
//
//        guard let userId = UserDefaults.standard.userId else {
//            return
//        }
//
//        let resource = Resource(url: Constants.Urls.deleteGroceryCategory(userId: userId, groceryCategoryId: groceryCategoryId), method: .delete, modelType: GroceryCategoryResponseDTO.self)
//
//        let deletedGroceryCategory = try await httpClient.load(resource)
//
//        // remove the deleted category from the list
//        groceryCategories = groceryCategories.filter { $0.id != deletedGroceryCategory.id }
//    }
//
//    func populateGroceryItemsBy(groceryCategoryId: UUID) async throws {
//
//        guard let userId = UserDefaults.standard.userId else {
//            return
//        }
//
//        let resource = Resource(url: Constants.Urls.groceryItemsBy(userId: userId, groceryCategoryId: groceryCategoryId), modelType: [GroceryItemResponseDTO].self)
//
//        groceryItems = try await httpClient.load(resource)
//    }
//
//    func populateGroceryCategories() async throws {
//
//        guard let userId = UserDefaults.standard.userId else {
//            return
//        }
//
//        let resource = Resource(url: Constants.Urls.groceryCategoriesBy(userId: userId), modelType: [GroceryCategoryResponseDTO].self)
//        print(resource.url.absoluteString)
//
//        groceryCategories = try await httpClient.load(resource)
//    }
//
//    func saveGroceryItem(_ groceryItemRequestDTO: GroceryItemRequestDTO, groceryCategoryId: UUID) async throws {
//
//        guard let userId = UserDefaults.standard.userId else {
//            return
//        }
//
//        let resource = try Resource(url: Constants.Urls.saveGroceryItem(userId: userId, groceryCategoryId: groceryCategoryId), method: .post(JSONEncoder().encode(groceryItemRequestDTO)), modelType: GroceryItemResponseDTO.self)
//
//        let newGroceryItem = try await httpClient.load(resource)
//        groceryItems.append(newGroceryItem)
//
//    }
//
//    func saveGroceryCategory(_ groceryCategoryRequestDTO: GroceryCategoryRequestDTO) async throws {
//
//        guard let userId = UserDefaults.standard.userId else {
//            return
//        }
//
//        let resource = try Resource(url: Constants.Urls.saveGroceryCategoryBy(userId: userId), method: .post(JSONEncoder().encode(groceryCategoryRequestDTO)), modelType: GroceryCategoryResponseDTO.self)
//
//        let groceryCategory = try await httpClient.load(resource)
//        // add new grocery to the list
//        groceryCategories.append(groceryCategory)
//    }
    
}
