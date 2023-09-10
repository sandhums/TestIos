//
//  AddNewUserView.swift
//  TestIos
//
//  Created by Manjinder Sandhu on 10/09/23.
//

import SwiftUI

struct AddNewUserView: View {
    @EnvironmentObject private var model: AppModel
    
    @State private var name: String = ""
    @State private var username: String = ""
    
    @Environment(\.dismiss) private var dismiss
    
    private func saveUser() async {
        
        // let user = User(name: name, username: username)
        
        do {
            try await model.createUser(name: name, username: username)
            dismiss()
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
    var body: some View {
        Form {
            TextField("Name", text: $name)
            TextField("Username", text: $username)
        }.navigationTitle("New User")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        Task {
                            await saveUser()
                        }
                    }//.disabled(!isFormValid)
                }
            }
    }
}

struct AddNewUserView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddNewUserView()
                .environmentObject(AppModel())
        }
    }
}
