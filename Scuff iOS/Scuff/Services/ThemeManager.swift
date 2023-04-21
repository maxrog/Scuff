//
//  ThemeManager.swift
//  Scuff
//
//  Created by Max Rogers on 4/20/23.
//

import Foundation

/*
 TODO instead of just light or dark mode, user should be able to fine comb colors (primary/secondary text / accent / bg
 */

/*
 TODO make this an observed object to read changes for theme setting?
 */

/// Manager for the user's color theme preference
class ThemeManager {
    
    /// Whether user has opted to use something other than system settings
    var shouldOverrideSystemSetting: Bool {
        get { UserDefaults.standard.bool(forKey:ThemeUserDefaults.overrideSystemKey) }
        set { UserDefaults.standard.set(newValue, forKey:ThemeUserDefaults.overrideSystemKey) }
    }
    
    /// Whether user has opted for a light or a dark mode
    var shouldApplyDarkMode: Bool {
        get { UserDefaults.standard.bool(forKey: ThemeUserDefaults.applyDarkModeKey) }
        set { UserDefaults.standard.set(newValue, forKey: ThemeUserDefaults.applyDarkModeKey) }
    }
    
}

private struct ThemeUserDefaults {
    static let overrideSystemKey = "rogers.max.scuff.themeoverridesystemsettingkey"
    static let applyDarkModeKey = "rogers.max.scuff.applydarkmodekey"
}
