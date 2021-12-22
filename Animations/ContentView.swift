//
//  ContentView.swift
//  Animations
//
//  Created by Daniel Jesus Callisaya Hidalgo on 21/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            Button {
                withAnimation(.interpolatingSpring(stiffness: 4, damping: 1)) {
                    animationAmount += 360
                }
            } label:{
                Text("Press Me")
                   
            }
            .padding(40)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
         
            .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 0, z: 1))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
