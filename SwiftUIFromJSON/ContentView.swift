//
//  ContentView.swift
//  SwiftUIFromJSON
//
//  Created by Angelina Wu on 10/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Button("Hello", action: {
                print("Button Pressed")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        let jsonTest = """
        {
            "text": "Test123123",
            "alignment": "right",
            "font": "body"
        }
        """
        let testView = try! JSONDecoder().decode(Label.self, from: jsonTest.data(using: .utf8)!)
        VStack{
        testView
        ContentView()
        }
    }
}

