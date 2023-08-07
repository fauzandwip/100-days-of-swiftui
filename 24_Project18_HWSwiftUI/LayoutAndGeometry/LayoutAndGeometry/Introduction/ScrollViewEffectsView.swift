//
//  ScrollViewEffectsView.swift
//  LayoutAndGeometry
//
//  Created by Fauzan Dwi Prasetyo on 04/08/23.
//

import SwiftUI

struct ScrollViewEffectsView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        // MARK: - vertical scroll view effects
//        GeometryReader { fullView in
//            ScrollView {
//                ForEach(0..<50) { index in
//                    GeometryReader { geo in
//                        Text("Row #\(index)")
//                            .font(.title)
//                            .frame(maxWidth: .infinity)
//                            .background(colors[index % 7])
//                            .rotation3DEffect(.degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
//                            .onTapGesture {
//                            }
//                    }
//                    .frame(height: 40)
//                }
//            }
//        }
        
        // MARK: - horizontal scroll view effects
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<20) { num in
                    GeometryReader { geo in
                        Text("Number \(num)")
                            .font(.largeTitle)
                            .padding()
                            .background(.red)
                            .rotation3DEffect(.degrees(-geo.frame(in: .global).minX / 8), axis: (x: 0, y: 1, z: 0))
                            .frame(width: 200, height: 200)
                    }
                    .frame(width: 200, height: 200)
                }
            }
        }
    }
}

struct ScrollViewEffectsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewEffectsView()
    }
}
