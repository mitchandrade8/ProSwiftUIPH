//
//  LayoutNeutrality.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/3/23.
//

import SwiftUI

struct LayoutNeutrality: View {
    
    @State private var usesFixedSize = false
    
    var body: some View {
        VStack {
            Text("I am the best")
                .bold()
                .frame(width: usesFixedSize ? 270: nil, height: 50)
                .background(.teal)
                .cornerRadius(12)
            
            Toggle("Fixed sizes", isOn: $usesFixedSize.animation())
        }
        .padding()
    }
}

struct LayoutNeutrality_Previews: PreviewProvider {
    static var previews: some View {
        LayoutNeutrality()
    }
}
