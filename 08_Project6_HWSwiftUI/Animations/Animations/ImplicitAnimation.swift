//
//  ImplicitAnimationView.swift
//  Animations
//
//  Created by Fauzan Dwi Prasetyo on 22/06/23.
//

import SwiftUI

struct ImplicitAnimationView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

struct ImplicitAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimationView()
    }
}
