//
//  File.swift
//  
//
//  Created by Teakowa Yang on 2024/4/16.
//

import Foundation
import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  init(hex: String) {
    var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
    cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
    
    var rgb: UInt64 = 0
    
    Scanner(string: cleanHexCode).scanHexInt64(&rgb)
    
    let redValue = Double((rgb >> 16) & 0xFF) / 255.0
    let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
    let blueValue = Double(rgb & 0xFF) / 255.0
    self.init(red: redValue, green: greenValue, blue: blueValue)
  }
}
