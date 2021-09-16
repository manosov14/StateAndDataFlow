//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Михаил on 16.09.2021.
//

import Foundation
import  SwiftUI

class DataManager {
    
    @AppStorage ("user") var user = ""
    
    private init() {}
    
    func getUserData() -> String { user }
    func createUserData() {
        
        
    }
        
        
    
    
    
}
