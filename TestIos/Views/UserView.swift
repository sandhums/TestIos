//
//  UserView.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 09/09/23.
//

import SwiftUI

struct UserView: View {
    @EnvironmentObject private var model: AppModel
    @EnvironmentObject private var appState: AppState
    
    private func fetchUsers() async {
        do {
            try await model.populateUsers()
        } catch {
            print(error.localizedDescription)
        }
    }
    var body: some View {
        ZStack {
            if model.users.isEmpty {
                Text("No grocery categories found.")
            } else {
                List {
                    ForEach(model.users) { user in
//                        NavigationLink(value: Route.groceryCategoryDetail(groceryCategory)) {
//                            HStack {
//                                Circle()
//                                    .fill(Color.fromHex(groceryCategory.colorCode))
//                                    .frame(width: 25, height: 25)
                        Text(user.name)
                        Text(user.username)
                            }
                        }
                    }//.onDelete(perform: deleteGroceryCategory)
                }
        .navigationTitle("Users")
        .task {
            await fetchUsers()
        }
            }
        }
struct UserViewContainer: View {
    
    @StateObject private var model = AppModel()
    @StateObject private var appState = AppState()
    
    var body: some View {
        NavigationStack() {
            UserView()
            
        }
        .environmentObject(model)
        .environmentObject(appState)
    }
    
}


struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserViewContainer()
    }
}
