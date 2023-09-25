//
//  CGIcon.swift
//  
//
//  Created by Baher Tamer on 25/09/2023.
//

import Foundation

public enum CGIcon: String {
    case circle
}

extension CGIcon {
    var fill: String {
        self.rawValue.lowercased() + ".fill"
    }
    
    var stroke: String {
        self.rawValue.lowercased()
    }
}
