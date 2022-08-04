//
//  ContentView.swift
//  Views&Modifiers - project 3
//
//  Created by Barry Barron on 8/3/22.
// Now is the time for all good men...

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func title() -> some View {
        modifier(TitleModifier())
    }
}


struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .title()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// I have no idea why this does not work
