# SwiftUI TabBar with Interactive Animations

## Overview
This SwiftUI project demonstrates how to create a custom TabBar with interactive animations, enhancing the user experience in iOS applications. It covers the implementation of SwiftUI's powerful UI capabilities to create engaging and dynamic interfaces.

## Features
- Custom TabBar design using SwiftUI.
- Interactive animations for TabBar selection.
- Dynamic color and icon changes for active tabs.
- Easy to integrate into any SwiftUI app.

## Requirements
- iOS 14.0+
- Xcode 12.0+
- Swift 5.3+

## Installation
To add this project to your SwiftUI application, follow these steps:
- Clone this repository:
   ```bash
   git clone https://github.com/pouyasadri/CustomTabBarApp.git
   ```
## Usage
To use the custom TabBar in your SwiftUI views, simply import the project and add `CustomTabBar` to your view hierarchy. Here's a basic example:
  ```bash
import SwiftUI
import CustomTabBar

struct ContentView: View {
    var body: some View {
        HomeView() // Your view that includes the CustomTabBar
    }
}
```
## Customization
You can customize the TabBar according to your needs by modifying the `TabModel.swift` file. This includes changing the icons, colors, and titles of the tabs.

## Contributing
Contributions are welcome! Please feel free to submit a pull request with any improvements, bug fixes, or additional features you think would enhance this project.
