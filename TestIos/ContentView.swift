//
//  ContentView.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 09/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                AcronymView()
                    .tabItem {
                        Label("Acronyms", systemImage: "textformat.alt")
                    }.navigationTitle("Acronyms")
                UserView()
                    .tabItem {
                        Label("Users", systemImage: "person.3")
                    }
                CategoryView()
                    .tabItem {
                        Label("Categories", systemImage: "rectangle.3.group")
                    }
            }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
            ContentView()
                .environmentObject(AppModel())
        
    }
}
