//
//  ProfileViewModel.swift
//  IG_Clone
//
//  Created by User on 10/8/22.
//

import Foundation

import SwiftUI

enum ProfileMediaViewModel: Int, CaseIterable {
    case grid
    case reels
    case played
    case pictures
    
    
    var mediaType: String {
        switch self {
        case.grid :
            return "square.grid.3x3"
        case .played :
            return "play.square"
        case .reels:
            return "play"
        case .pictures:
         return "person.crop.square"
        }
    }
}
