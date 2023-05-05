//
//  CreatingAnimatedViews.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/4/23.
//

import SwiftUI

struct CountingText: View, Animatable {
    var value: Double
    var fractionLength = 8
    
    var animatableData: Double {
        get { value }
        set { value = newValue }
    }
    
    var body: some View {
        Text(value.formatted(.number.precision(.fractionLength(fractionLength))))
    }
}

struct CreatingAnimatedViews: View {
    @State private var value = 0.0
    
    var body: some View {
        CountingText(value: value)
            .font(.largeTitle)
            .onTapGesture {
                withAnimation(.linear) {
                    value = Double.random(in: 1...1000)
                }
            }
    }
}

struct CreatingAnimatedViews_Previews: PreviewProvider {
    static var previews: some View {
        CreatingAnimatedViews()
    }
}
