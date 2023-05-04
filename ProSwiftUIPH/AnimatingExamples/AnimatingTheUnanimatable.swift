//
//  AnimatingTheUnanimatable.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/4/23.
//

import SwiftUI

struct AnimatingTheUnanimatable: View {
    @State private var scale = 1.0
    
    var body: some View {
        Text("What it do baby")
            .scaleEffect(scale)
            .onTapGesture {
                withAnimation {
                    scale += 1
                }
            }
    }
}

struct AnimatingTheUnanimatable_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingTheUnanimatable()
    }
}
