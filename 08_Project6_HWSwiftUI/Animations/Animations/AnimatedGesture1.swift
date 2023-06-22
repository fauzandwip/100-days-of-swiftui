//
//  AnimatedGesture1.swift
//  Animations
//
//  Created by Fauzan Dwi Prasetyo on 22/06/23.
//

import SwiftUI

struct AnimatedGesture1View: View {
    let letters = Array("Hello SwiftUI")
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        VStack {
            LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .offset(dragAmount)
                .gesture(
                    DragGesture()                        .onChanged { dragAmount = $0.translation }
                        .onEnded { _ in
//                            explicit animation
                            withAnimation(.spring()) {
                                dragAmount = .zero
                            }
                        }
                )
//             implicit animation
//                .animation(.spring(), value: dragAmount)
        }
    }
}

struct AnimatedGesture1View_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedGesture1View()
    }
}
