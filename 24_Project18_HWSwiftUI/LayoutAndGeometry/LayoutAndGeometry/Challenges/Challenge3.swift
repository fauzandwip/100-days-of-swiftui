//
//  Challenge3.swift
//  LayoutAndGeometry
//
//  Created by Fauzan Dwi Prasetyo on 04/08/23.
//

import SwiftUI

struct Challenge3: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        GeometryReader { fullView in
            ScrollView {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(
                                Color(
                                    hue: min(geo.frame(in: .global).minY / fullView.size.height, 1.0),
                                    saturation: 1,
                                    brightness: 1))
                            .rotation3DEffect(
                                .degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5,
                                axis: (x: 0, y: 1, z: 0))
                    }
                    .frame(height: 40)
                }
            }
        }
    }
}

struct Challenge3_Previews: PreviewProvider {
    static var previews: some View {
        Challenge3()
    }
}
