//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Михаил on 15.09.2021.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
