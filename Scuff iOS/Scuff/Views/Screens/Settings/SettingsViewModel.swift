//
//  SettingsViewModel.swift
//  Scuff
//
//  Created by Max Rogers on 4/20/23.
//

import SwiftUI

/// View model to manage user settings
class SettingsViewModel: ObservableObject {
    
    /// User's selected tab in main tab view
    @AppStorage(StorageKeys.selectedTabIndex.rawValue) var selectedTabIndex: Int = 0
    
}

fileprivate
enum StorageKeys: String {
    case selectedTabIndex
}
