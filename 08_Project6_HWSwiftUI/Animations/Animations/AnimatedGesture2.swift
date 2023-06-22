//
//  AnimatedGesture2.swift
//  Animations
//
//  Created by Fauzan Dwi Prasetyo on 22/06/23.
//

import SwiftUI

struct AnimatedGesture2View: View {
    let letters = Array("Hello SwiftUI")
    
    @State private var dragAmount = CGSize.zero
    @State private var enabled = false
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                ForEach(0..<letters.count, id: \.self) { num in
                    Text(String(letters[num]))
                        .padding(5)
                        .font(.title)
                        // 5. background triggered, background changed
                        .background(enabled ? .blue : .red)
                        // 2. offset() triggered, view moving
                        .offset(dragAmount)
                        // 3. animation() triggered while moving with offset, with delay
                        .animation(.default.delay(Double(num) / 20), value: dragAmount)
                }
            }
            .gesture(
                DragGesture()
                    // 1. while dragged, dragAmount changed
                    .onChanged { dragAmount = $0.translation }
                    // 4. while user lifts their finger, back to .zero position
                    .onEnded { _ in
                        dragAmount = .zero
                        enabled.toggle()
                    }
            )
        }
    }
}

struct AnimatedGesture2View_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedGesture2View()
    }
}
