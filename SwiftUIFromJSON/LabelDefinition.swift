//
//  LabelDefinition.swift
//  SwiftUIFromJSON
//
//  Created by Angelina Wu on 10/02/2021.
//

import SwiftUI

enum TextFont: String, Codable {
    case largeTitle
    case title
    case headline
    case subheadline
    case body
    case callout
    case footnote
    case caption
}

let fontMapping: [TextFont: Font] = [
    .largeTitle: .largeTitle,
    .title: .title,
    .headline: .headline,
    .subheadline: .subheadline,
    .body: .body,
    .callout: .callout,
    .footnote: .footnote,
    .caption: .caption
]

struct Label: View, Codable {
    var text: String
    var alignment: HorizontalAlignment
    var font: TextFont = .body
    
    var body: some View {
        let textView = Text(text).font(fontMapping[font])
        textView.applyHorizontalAlignment(alignment)
    }
}
