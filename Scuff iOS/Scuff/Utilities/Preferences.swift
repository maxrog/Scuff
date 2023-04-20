//
//  Preferences.swift
//  Scuff
//
//  Created by Max Rogers on 4/20/23.
//

import SwiftUI

// TODO use AppStorage UserDefault wrapper where necessary

struct Preferences {
    static let colors = Colors()
}

struct Colors {
    
    // MARK: Base
    
    /// The primary text color to be used on views
    private(set) var textColor: Color {
        get {
            // fetch from app storage? or user defaults
            return Color.primary
        }
        set {
            // store to app storage? or user defaults
        }
    }
    
    /// The secondary text color to be used on Views
    private(set) var secondaryTextColor: Color {
        get {
            // fetch from app storage? or user defaults
            return Color.secondary
        }
        set {
            // store to app storage? or user defaults
        }
    }
    
    /// The primary background color to be used on views
    private(set) var backgroundColor: Color {
        get {
            // fetch from app storage? or user defaults
            return Color.systemBackground
        }
        set {
            // store to app storage? or user defaults
        }
    }
    
    /// The primary accent color to be used on views
    private(set) var accentColor: Color {
        get {
            // fetch from app storage? or user defaults
            return Color.accentColor
        }
        set {
            // store to app storage? or user defaults
        }
    }
    
    /// The secondary accent color to be used on views
    private(set) var secondaryAccentColor: Color {
        get {
            // fetch from app storage? or user defaults
            return Color.systemGreen
        }
        set {
            // store to app storage? or user defaults
        }
    }
    
    // MARK: Features
    

    
}
