//
//  Challenge2.swift
//  LayoutAndGeometry
//
//  Created by Fauzan Dwi Prasetyo on 04/08/23.
//

import SwiftUI

struct Challenge2: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        GeometryReader { fullView in
            ScrollView {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(colors[index % 7])
                            .rotation3DEffect(.degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                        // scale large to small, from bottom to top with 50% smaller maximum
                            .scaleEffect(
                                max(geo.frame(in: .global).maxY / fullView.size.height * 1.5, 0.5)
                            )
                    }
                    .frame(height: 40)
                }
            }
        }
    }
}

struct Challenge2_Previews: PreviewProvider {
    static var previews: some View {
        Challenge2()
    }
}
