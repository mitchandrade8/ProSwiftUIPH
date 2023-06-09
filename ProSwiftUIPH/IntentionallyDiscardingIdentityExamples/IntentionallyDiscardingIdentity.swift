//
//  IntentionallyDiscardingIdentity.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/4/23.
//

import SwiftUI

struct IntentionallyDiscardingIdentity: View {
    
    @State private var items = Array(1...20)
    var body: some View {
        VStack(spacing: 0) {
            List(items, id: \.self) {
                Text("Item \($0)")
            }
            .id(UUID())
            .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
            
            Button("Shuffle") {
                withAnimation(.easeInOut(duration: 1)) {
                    items.shuffle()
                }
            }
            .buttonStyle(.borderedProminent)
            .padding(5)
        }
    }
}

struct IntentionallyDiscardingIdentity_Previews: PreviewProvider {
    static var previews: some View {
        IntentionallyDiscardingIdentity()
    }
}
