//
//  positionView.swift
//  LayoutAndGeometry
//
//  Created by Fauzan Dwi Prasetyo on 04/08/23.
//

import SwiftUI

struct positionView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        // try to switch modifier
        //            .position(x: 100, y: 100)
        //            .background(.red)
        
        // try to switch modifier
            .offset(x: 100, y: 100)
            .background(.red)
        
    }
}

struct positionView_Previews: PreviewProvider {
    static var previews: some View {
        positionView()
    }
}
