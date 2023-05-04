//
//  UnderstandingIdentity.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/3/23.
//

import SwiftUI

enum ViewState {
    case a, b, c, d, e, f
}

struct UnderstandingIdentity: View {
    @State private var loadState = ViewState.a
    
    @ViewBuilder var state: some View {
        switch loadState {
        case .a:
            Text("a")
        case .b:
            Image(systemName: "plus")
        case .c:
            Circle()
        case .d:
            Rectangle()
        case .e:
            Capsule()
        case .f:
            Text("F")
        }
    }
    var body: some View {
        Button("Press Me") {
            print(type(of: state))
        }
    }
}

struct UnderstandingIdentity_Previews: PreviewProvider {
    static var previews: some View {
        UnderstandingIdentity()
    }
}
