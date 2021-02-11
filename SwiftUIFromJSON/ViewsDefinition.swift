//
//  Views.swift
//  SwiftUIFromJSON
//
//  Created by Angelina Wu on 10/02/2021.
//

import Foundation
import SwiftUI

enum HorizontalAlignment: String, Codable {
    case left
    case right
    case centre
}

extension View {
    func applyHorizontalAlignment(_ alignment: HorizontalAlignment) -> some View {
        switch alignment {
        case .left:
            return AnyView(HStack {
                self
                Spacer()
            })
        case .right:
            return AnyView(HStack {
                Spacer()
                self
            })
        case .centre:
            return AnyView(HStack {
                Spacer()
                self
                Spacer()
            })
        @unknown default:
            return AnyView(self)
        }
    }
}
