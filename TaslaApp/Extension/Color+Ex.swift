//
//  Color+Ex.swift
//  TaslaApp
//
//  Created by Shahriar Nasim Nafi on 20/11/21.
//  Copyright © 2021 Shahriar Nasim Nafi. All rights reserved.
//

import SwiftUI


extension Color {
    
    static let tesla = Color(rgba: 0x53F9FF)
    static let black = Color(rgba: 0x000000)
    static let white = Color(rgba: 0xFFFFFF)
    
    init(rgba: Int, opacity: Double = 1.0) {
        self.init(
            red: (rgba >> 16) & 0xFF,
            green: (rgba >> 8) & 0xFF,
            blue: rgba & 0xFF,
            opacity: opacity
        )
    }
    init(red: Int, green: Int, blue: Int, opacity: Double) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: Double(red) / 255.0, green: Double(green) / 255.0, blue: Double(blue) / 255.0, opacity: opacity)
    }
}

