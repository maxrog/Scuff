//
//  ScuffApp.swift
//  Scuff
//
//  Created by Max Rogers on 4/20/23.
//

import SwiftUI
/*
 https://rapidapi.com/tg4-solutions-tg4-solutions-default/api/the-sneaker-database/details
 */

@main
struct ScuffApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    @StateObject var settings = SettingsViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $settings.selectedTabIndex) {
                /*
                 TODO try to include pagination / infinite scroll / search function
                 */
                Text("Discover")
                    .background(settings.theme.backgroundColor)
                    .foregroundColor(settings.theme.textColor)
                    .tabItem {
                        Image(systemName: "point.3.connected.trianglepath.dotted")
                            .foregroundColor(settings.theme.accentColor)
                    }
                    .tag(Tabs.discover.rawValue)
                Text("Closet")
                    .background(settings.theme.backgroundColor)
                    .foregroundColor(settings.theme.textColor)
                    .tabItem {
                        Image(systemName: "point.3.connected.trianglepath.dotted")
                            .foregroundColor(settings.theme.accentColor)
                    }
                    .tag(Tabs.closet.rawValue)
                SettingsView()
                    .tabItem {
                        Image(systemName: "point.3.connected.trianglepath.dotted")
                            .foregroundColor(settings.theme.accentColor)
                    }
                    .tag(Tabs.settings.rawValue)
            }
            .environmentObject(settings)
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

