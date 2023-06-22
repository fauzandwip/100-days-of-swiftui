//
//  ShowHideTransition.swift
//  Animations
//
//  Created by Fauzan Dwi Prasetyo on 06/06/23.
//

import SwiftUI

struct ShowHideTransitionView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ShowHideTransitionView_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideTransitionView()
    }
}
