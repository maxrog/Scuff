//
//  ScuffApp.swift
//  Scuff
//
//  Created by Max Rogers on 4/20/23.
//

import SwiftUI

@main
struct ScuffApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            // TODO Tab View
            ContentView()
        }
        .onChange(of: scenePhase) { newScenePhase in
            
            switch scenePhase {
            case .active:
                /// application became active
                break
            case .background:
                /// application went to background
                break
            case .inactive:
                /// application became inactive
                break
            default:
                break
            }
        }
    }
}

