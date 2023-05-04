//
//  InsideTupleView.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/3/23.
//

import SwiftUI

struct InsideTupleView: View {
    var body: some View {
        VStack {
            Text("Hello")
            Text("World")
        }
        .onTapGesture {
            print(type(of: self.body))
        }
    }
}

struct InsideTupleView_Previews: PreviewProvider {
    static var previews: some View {
        InsideTupleView()
    }
}
