//
//  CustomAnimation.swift
//  Animations
//
//  Created by Fauzan Dwi Prasetyo on 22/06/23.
//

import SwiftUI

struct CustomAnimationView: View {
    @State private var animationAmount: CGFloat = 1.0
    
    var body: some View {
        Button("Tap Me") {
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.red)
//                .fill(.mint)
//                .background(.mint)
//                .clipShape(Circle())
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAmount)
        )
        .onAppear{
            animationAmount = 2
        }
    }
}

struct CustomAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnimationView()
    }
}
