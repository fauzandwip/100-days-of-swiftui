//
//  Challenge1.swift
//  LayoutAndGeometry
//
//  Created by Fauzan Dwi Prasetyo on 04/08/23.
//

import SwiftUI

struct Challenge1: View {
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
                        // fade out from 200 points to the top
                            .opacity(geo.frame(in: .global).minY / 200)
                    }
                    .frame(height: 40)
                }
            }
        }
    }
}

struct Challenge1_Previews: PreviewProvider {
    static var previews: some View {
        Challenge1()
    }
}
