//
//  OptionalsViews.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/4/23.
//

import SwiftUI

struct OptionalsViews: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.blue)
            .onTapGesture {
                print(type(of: self.body))
            }
    }
}

struct OptionalsViews_Previews: PreviewProvider {
    static var previews: some View {
        OptionalsViews()
    }
}
