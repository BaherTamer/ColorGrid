//
//  CGPicker.swift
//
//
//  Created by Baher Tamer on 25/09/2023.
//

import SwiftUI

/** A control used to select a color from the provided array of colors.
 
 You create a picker by providing an array of colors, a selection binding to a color, a number of columns of the colors grid, a picker symbol, and a border color style.
 
 ``` swift
 struct ContentView: View {
    @State private var selectedColor: Color = .red
    private let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple, .pink, .brown]
 
    var body: some View {
        CGPicker(colors: colors, selection: $selectedColor, columns: 6, icon: .circle, border: .normal)
    }
 }
 ```
 
 By default the picker initialize `columns` with `6` and `icon` with `circle`, and `border` with `normal`.
 
 ``` swift
 CGPicker(colors: colors, selection: $selectedColor)
 ```
 
 */
public struct CGPicker: View {
    
    @Binding public var selection: Color
    
    private let colors: [Color]
    private let columns: [GridItem]
    private let icon: CGIcon
    private let border: CGBorder
    
    /// Creates an instance that selects a color.
    ///
    /// - Parameters:
    ///   - colors: A collection of colors used as the source for the picker
    ///   - selection: A `Binding` to a variable that determines the currently-selected color
    ///   - columns: A number of columns for the picker grid view.
    ///   - icon: A symbol icon for each color shape in the picker.
    ///   - border: A color for the selected color border.
    public init(colors: [Color], selection: Binding<Color>, columns: Int = 6, icon: CGIcon = .circle, border: CGBorder = .normal) {
        self._selection = selection
        
        self.colors = colors
        self.columns = Array(repeating: GridItem(.flexible()), count: columns)
        self.icon = icon
        self.border = border
    }
    
}

// MARK: - View Components
extension CGPicker {
    
    public var body: some View {
        LazyVGrid(columns: self.columns, spacing: 16) {
            ForEach(self.colors, id: \.self) { color in
                ZStack {
                    if color == self.selection {
                        borderIcon
                    }
                    
                    Image(systemName: self.icon.fill)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .foregroundColor(color)
                }
                .frame(width: 48, height: 48)
                .onTapGesture {
                    self.selection = color
                }
            }
        }
    }
    
}

// MARK: - Border Component
extension CGPicker {
    
    private var borderColor: Color {
        switch border {
        case .none:
                .clear
        case .normal:
            Color(UIColor.systemGray3)
        case .selection:
            selection
        case .custom(color: let color):
            color
        }
    }
    
    private var borderIcon: some View {
        Image(systemName: self.icon.stroke)
            .resizable()
            .scaledToFit()
            .foregroundColor(borderColor)
    }
    
}
