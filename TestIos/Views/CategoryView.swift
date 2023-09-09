//
//  CategoryView.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 09/09/23.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject private var model: AppModel
    @EnvironmentObject private var appState: AppState
    
    private func fetchCategories() async {
        do {
            try await model.populateCategories()
        } catch {
            print(error.localizedDescription)
        }
    }
    var body: some View {
        ZStack {
            if model.categories.isEmpty {
                Text("No grocery categories found.")
            } else {
                List {
                    ForEach(model.categories) { category in
//                        NavigationLink(value: Route.groceryCategoryDetail(groceryCategory)) {
//                            HStack {
//                                Circle()
//                                    .fill(Color.fromHex(groceryCategory.colorCode))
//                                    .frame(width: 25, height: 25)
                        Text(category.name)
                        
                            }
                        }
                    }//.onDelete(perform: deleteGroceryCategory)
                }
        .navigationTitle("Categories")
        .task {
            await fetchCategories()
        }
            }
        }
struct CategoryViewContainer: View {
    
    @StateObject private var model = AppModel()
    @StateObject private var appState = AppState()
    
    var body: some View {
        NavigationStack() {
            CategoryView()
            
        }
        .environmentObject(model)
        .environmentObject(appState)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryViewContainer()
    }
}
