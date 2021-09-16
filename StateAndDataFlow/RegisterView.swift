//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Михаил on 16.09.2021.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
//    private var nameCount = usernameValidator()
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    
            }
            
            Button(action: { registerUser() }) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
        }
    }

    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
    
    
    
//    private func nameValidator(name: Text) -> ModifiedContent {
//        if name < 3 {
//            Text("").foregroundColor(.blue)
//        } else {
//
//        }
//    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
