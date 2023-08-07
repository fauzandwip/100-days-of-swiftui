//
//  CustomAlignmentGuideView.swift
//  LayoutAndGeometry
//
//  Created by Fauzan Dwi Prasetyo on 04/08/23.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct CustomAlignmentGuideView: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@twostraws")
                    .alignmentGuide(.midAccountAndName) { d in
                        d[VerticalAlignment.center]
                    }
                Image("example")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack {
                Text("Full Name:")
                Text("PAUL HUDSON")
                    .alignmentGuide(.midAccountAndName, computeValue: { d in
                        d[VerticalAlignment.center]
                    })
                    .font(.largeTitle)
            }
        }
    }
}

struct CustomAlignmentGuideView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlignmentGuideView()
    }
}
