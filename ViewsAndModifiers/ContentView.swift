//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Jasper Tan on 11/10/24.
//

import SwiftUI

struct ProminentTitle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundStyle(.blue)
    }
}

extension View {
    func prominentTitle() -> some View {
        modifier(ProminentTitle())
    }
}

struct ContentView: View {
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
        
    
        Text("Make this prominent")
            .prominentTitle()
        
    }
}

#Preview {
    ContentView()
}
