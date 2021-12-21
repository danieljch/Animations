//
//  ContentView.swift
//  Animations
//
//  Created by Daniel Jesus Callisaya Hidalgo on 21/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            Button {
                animationAmount += 0.5
            } label:{
                Text("Press Me")
                    .padding(40)
                   .contentShape(Circle())
            }
               
            .background(Color(.sRGB, red: 0.2 + animationAmount / 3, green: 0.3 * animationAmount, blue: 1-animationAmount/2, opacity: 1))
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
           // .blur(radius: (animationAmount - 1) * 3)
         //   .animation(.interpolatingSpring(stiffness: 40, damping: 0.1), value: animationAmount)
            .animation(.easeInOut(duration: 0.5), value: animationAmount)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
