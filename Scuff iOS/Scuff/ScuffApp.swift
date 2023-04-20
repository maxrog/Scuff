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
    @StateObject var settingsViewModel = SettingsViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $settingsViewModel.selectedTabIndex) {
                Text("Discover")
                    .tabItem {
                        Image(systemName: "point.3.connected.trianglepath.dotted")
                            .foregroundColor(Preferences.colors.accentColor)
                    }
                    .tag(Tabs.discover.rawValue)
                Text("Closet")
                    .tabItem {
                        Image(systemName: "point.3.connected.trianglepath.dotted")
                            .foregroundColor(Preferences.colors.accentColor)
                    }
                    .tag(Tabs.closet.rawValue)
                Text("Settings")
                    .tabItem {
                        Image(systemName: "point.3.connected.trianglepath.dotted")
                            .foregroundColor(Preferences.colors.accentColor)
                    }
                    .tag(Tabs.settings.rawValue)
            }
            .environmentObject(settingsViewModel)
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

private enum Tabs: Int {
    case discover = 0
    case closet
    case settings
}

