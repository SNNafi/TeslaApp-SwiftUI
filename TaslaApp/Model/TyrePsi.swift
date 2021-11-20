//
//  TyrePsi.swift
//  TaslaApp
//
//  Created by Shahriar Nasim Nafi on 20/11/21.
//  Copyright © 2021 Shahriar Nasim Nafi. All rights reserved.
//

import Foundation

struct TyrePsi: Identifiable {
    let id = UUID()
    let psi: Double
    let temperature: Int
    let isLowPressure: Bool
    
    var psiLabel: String {
        "\(psi)psi"
    }
    
    var temperatureLabel: String {
        "\(temperature)°C"
    }
    
    
    static let psiList = [
        TyrePsi(psi: 23.6, temperature: 56, isLowPressure: true),
        TyrePsi(psi: 35.0, temperature: 41, isLowPressure: false),
        TyrePsi(psi: 34.6, temperature: 41, isLowPressure: false),
        TyrePsi(psi: 34.8, temperature: 42, isLowPressure: false),
    ]
}

