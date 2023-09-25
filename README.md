# ColorGrid
Enhance your SwiftUI app by incorporating a fully customizable color picker inspired by the renowned Apple Reminders app.

<br/>

## 📝 Requirements
- iOS 14.0+

<br/>

## ⬇️ Installation
#### 🔨 For Xcode Projects
1. In Xcode, select **Add Packages** from the File menu.
2. Enter `https://github.com/BaherTamer/ColorGrid` in the search field.
3. Click **Add Package** (Set the Dependency Rule to Up to Next Major Version)
4. After adding the package, you will be able to import **ColorGrid** in your project by using.

``` Swift
import ColorGrid
```

<br/>

#### 📦 For Swift Packages
Add a dependency in your `Package.swift`

``` Swift
dependencies: [
  .package(url: "https://github.com/BaherTamer/ColorGrid.git", from: "1.0.0")
]
```

<br/>

## ⚙️ Configuration
ColorGrid lets you define some configurations to fit your needs.

``` Swift
public struct CGPicker: View {

    @Binding public var selection: Color
    
    private let colors: [Color]
    private let columns: [GridItem]
    private let icon: CGIcon
    
    public init(colors: [Color], selection: Binding<Color>, columns: Int = 6, icon: CGIcon = .circle) {
        self._selection = selection
        
        self.colors = colors
        self.columns = Array(repeating: GridItem(.flexible()), count: columns)
        self.icon = icon
    }

}
```

<br/>

## 👤 Authors
This library is created by Baher Tamer. Feel free to reach out on [LinkedIn](https://www.linkedin.com/in/bahertamer/)

<br/>

## ⚖️ License
ColorGrid is available under the MIT license.

```
    MIT License
    
    Copyright (c) 2023 Baher Tamer
    
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
```
