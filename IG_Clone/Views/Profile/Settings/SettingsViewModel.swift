//
//  SettingsViewModel.swift
//  IG_Clone
//
//  Created by User on 10/8/22.
//

import Foundation

enum SettingsViewModel: Int, CaseIterable {
    case settings
    case activity
    case saved
    case favourites
    
    var title: String {
        switch self {
        case .settings:
            return "Settings"
        case .activity:
            return "Activity"
        case .saved:
            return "Saved"
        case .favourites:
            return "Favourites"
            
        }
    }
    var imageName:String {
        switch self {
        case .settings:
            return "gear"
        case .activity:
            return "clock.arrow.2.circlepath"
        case .saved:
            return "bookmark"
        case .favourites:
            return "star"
            
        }
    }
}
