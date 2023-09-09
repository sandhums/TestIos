//
//  TestIosApp.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 09/09/23.
//

import SwiftUI

@main
struct TestIosApp: App {
    @StateObject private var model = AppModel()
    @StateObject private var appState = AppState()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .environmentObject(appState)
        }
    }
}
