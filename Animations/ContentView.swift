//
//  ContentView.swift
//  Animations
//
//  Created by Daniel Jesus Callisaya Hidalgo on 21/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    @State private var enabled = true
    
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            Button("Tap Me") {
                enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .animation(nil, value: enabled)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
