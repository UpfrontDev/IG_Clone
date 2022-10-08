//
//  NavigationType.swift
//  IG_Clone
//
//  Created by User on 10/8/22.
//
import Foundation


enum NavigationType: String,Hashable {
    case messages
    case home
    
    var value: Int{
        switch self{
        case.messages:
            return 1
        case .home:
            return 0
        }
    }
}
