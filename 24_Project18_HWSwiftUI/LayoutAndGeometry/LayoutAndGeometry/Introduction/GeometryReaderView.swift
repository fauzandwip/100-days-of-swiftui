//
//  GeometryReaderView.swift
//  LayoutAndGeometry
//
//  Created by Fauzan Dwi Prasetyo on 04/08/23.
//

import SwiftUI

struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            InnerView()
            Text("Bottom")
        }
        .background(.red)
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            GeometryReader { geo in
                Text("Center")
                    .background(.blue)
                    .onTapGesture {
                        print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
                        print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
                        print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
                    }
            }
            .background(.orange)
            Text("Right")
        }
        .background(.green)
    }
}

struct GeometryReaderView: View {
    var body: some View {
        // MARK: - geometry reader take available space
//        VStack {
//            GeometryReader { geo in
//                Text("Hello World!")
//                    .frame(width: geo.size.width * 0.9)
//                    .background(.red)
//            }
//            .background(.green)
//
//            Text("More text")
//                .background(.blue)
//        }
        
        // MARK: - coordinate spaces
        OuterView()
            .coordinateSpace(name: "Custom")
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
