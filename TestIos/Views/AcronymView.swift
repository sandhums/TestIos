//
//  AcronymView.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 09/09/23.
//

import SwiftUI

struct AcronymView: View {
    @EnvironmentObject private var model: AppModel
    @EnvironmentObject private var appState: AppState
    
    private func fetchAcronyms() async {
        do {
            try await model.populateAcronyms()
        } catch {
            print(error.localizedDescription)
        }
    }
    var body: some View {
        NavigationStack {
            ZStack {
                if model.acronyms.isEmpty {
                    Text("No grocery categories found.")
                } else {
                    List {
                        ForEach(model.acronyms) { acronym in
                            //                        NavigationLink(value: Route.groceryCategoryDetail(groceryCategory)) {
                            //                            HStack {
                            //                                Circle()
                            //                                    .fill(Color.fromHex(groceryCategory.colorCode))
                            //                                    .frame(width: 25, height: 25)
                            Text(acronym.short)
                            Text(acronym.long)
                        }
                    }
                }//.onDelete(perform: deleteGroceryCategory)
            }
            .navigationTitle("Acronyms")
            .task {
                await fetchAcronyms()
            }
        }
       
            }
        }
struct AcronymViewContainer: View {
    
    @StateObject private var model = AppModel()
    @StateObject private var appState = AppState()
    
    var body: some View {
        NavigationStack() {
            AcronymView()
            
        }
        .environmentObject(model)
        .environmentObject(appState)
    }
    
}

struct AcronymView_Previews: PreviewProvider {
    static var previews: some View {
      AcronymViewContainer()
    }
}
