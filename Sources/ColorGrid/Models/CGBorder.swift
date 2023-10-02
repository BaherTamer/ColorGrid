//
//  CGBorder.swift
//
//
//  Created by Baher Tamer on 2/10/2023.
//

import SwiftUI

public enum CGBorder {
    /// No border color
    case none
    
    /// The default border color
    case normal
    
    /// A border color similar to the selection color
    case selection
    
    /// A specified custom border color
    case custom(color: Color)
}
