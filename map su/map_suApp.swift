//
//  map_suApp.swift
//  map su
//
//  Created by admin on 24/3/2566 BE.
//

import SwiftUI
import FirebaseCore

@main
struct map_suApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    @State var isActive : Bool = false
    var body: some Scene {
        WindowGroup {
            mapcsreenView()
                .environmentObject(StudentsClassViewModel())
        }
    }
}
