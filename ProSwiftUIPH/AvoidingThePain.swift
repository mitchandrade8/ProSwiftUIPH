//
//  AvoidingThePain.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/4/23.
//

import SwiftUI

extension View {
    func animatableForegroundColor(_ color: Color) -> some View {
        self
            .foregroundColor(.white)
            .colorMultiply(color)
    }
}

struct AvoidingThePain: View {
    @State private var isRed = false
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .animatableForegroundColor(isRed ? .red : .blue)
            .font(.largeTitle.bold())
            .onTapGesture {
                withAnimation {
                    isRed.toggle()
                }
            }
    }
}

struct AvoidingThePain_Previews: PreviewProvider {
    static var previews: some View {
        AvoidingThePain()
    }
}
