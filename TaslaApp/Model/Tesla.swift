//
//  Tesla.swift
//  TaslaApp
//
//  Created by Shahriar Nasim Nafi on 20/11/21.
//  Copyright © 2021 Shahriar Nasim Nafi. All rights reserved.
//

import SwiftUI

enum Tesla: Int, CaseIterable {
    
    case lock = 1
    case battery
    case temperature
    case tyrepressure
    
    var title: String {
        switch self {
        case .lock:
            return "LOCK / UNLOCK"
        case .battery:
            return "BATTERY STATUS"
        case .temperature:
            return "TEMPERATURE CONTROL"
        case .tyrepressure:
            return "TYRE PRESSURE MONITOR"
        }
    }
    
    var image: String {
        switch self {
        case .lock:
            return "Lock"
        case .battery:
            return "Battery"
        case .temperature:
            return "Temp"
        case .tyrepressure:
            return "Tyre"
        }
    }
}


extension Tesla: Identifiable {
    var id: Int {
        return self.rawValue
    }
}
