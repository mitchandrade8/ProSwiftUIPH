//
//  ZedIndexExample.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/4/23.
//

import SwiftUI

struct AnimatableZIndexModifier: ViewModifier, Animatable {
    var index: Double
    
    var animatableData: Double {
        get { index }
        set { print(newValue); index = newValue }
    }
    
    func body(content: Content) -> some View {
        content
            .zIndex(index)
    }
}

extension View {
    func animatableZIndex(_ index: Double) -> some View {
        self.modifier(AnimatableZIndexModifier(index: index))
    }
}

struct ZedIndexExample: View {
    @State private var redAtFront = false
    let colors: [Color] = [.blue, .green, .orange, .purple, .mint]
    
    var body: some View {
        VStack {
            Button("Toggle zIndex") {
                withAnimation(.linear(duration: 1)) {
                    redAtFront.toggle()
                }
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.red)
                    .animatableZIndex(redAtFront ? 6 : 0)
                
                ForEach(0..<5) { i in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(colors[i])
                        .offset(x: Double(i + 1) * 20, y: Double(i + 1) * 20)
                        .zIndex(Double(i))
                }
            }
            .frame(width: 200, height: 200)
        }
    }
}

struct ZedIndexExample_Previews: PreviewProvider {
    static var previews: some View {
        ZedIndexExample()
    }
}
