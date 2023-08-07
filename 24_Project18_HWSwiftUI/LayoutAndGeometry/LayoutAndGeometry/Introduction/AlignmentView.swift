//
//  AlignmentView.swift
//  LayoutAndGeometry
//
//  Created by Fauzan Dwi Prasetyo on 03/08/23.
//

import SwiftUI

struct AlignmentView: View {
    var body: some View {
//        Text("Live long and proper")
//            .frame(width: 300, height: 300, alignment: .topLeading)
        
//        HStack(alignment: .lastTextBaseline) {
//            Text("Live")
//                .font(.caption)
//            Text("long")
//            Text("and")
//                .font(.title)
//            Text("proper")
//                .font(.largeTitle)
//        }
//
//        VStack(alignment: .leading) {
//            Text("Hello world!")
//                .alignmentGuide(.leading) { d in
//                    d[.trailing]
//                }
//            Text("This is a longer line of text")
//        }
//        .background(.red)
//        .frame(width: 400, height: 400)
//        .background(.blue)
        
        VStack(alignment: .leading) {
            ForEach(0..<10) { position in
                Text("Number \(position)")
                    .alignmentGuide(.leading) { _ in
                        CGFloat(position * 10)
                    }
            }
            Text("Test")
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

struct AlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentView()
    }
}
