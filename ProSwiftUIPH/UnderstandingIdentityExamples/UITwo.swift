//
//  UITwo.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/3/23.
//

import SwiftUI

struct ExampleView: View {
    @State private var counter = 0
    
    let scale: Double
    
    var body: some View {
        Button("Tap Count: \(counter)") {
            counter += 1
        }
        .scaleEffect(scale)
    }
}

struct UITwo: View {
    @State private var scaleUp = false
    
//    var exampleView: some View {
//        if scaleUp {
//            return ExampleView(scale: 2)
//                .id("Example")
//        } else {
//             return ExampleView(scale: 1)
//                .id("Example")
//        }
//    }
    
    var body: some View {
        VStack {
            ExampleView(scale: scaleUp ? 2 : 1)
            
            Toggle("Scale Up", isOn: $scaleUp.animation())
        }
        .padding()
    }
}

struct UITwo_Previews: PreviewProvider {
    static var previews: some View {
        UITwo()
    }
}
