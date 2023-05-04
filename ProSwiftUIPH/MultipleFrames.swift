//
//  MultipleFrames.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/3/23.
//

import SwiftUI

struct MultipleFrames: View {
    var body: some View {
        Text("Today vs Yesterday")
            .background(.blue)
            .frame(width: 250)
            .background(.red)
            .frame(minWidth: 400)
            .background(.yellow)
        
    }
}

struct MultipleFrames_Previews: PreviewProvider {
    static var previews: some View {
        MultipleFrames()
    }
}
