//
//  IDITwo.swift
//  ProSwiftUIPH
//
//  Created by Mitch Andrade on 5/4/23.
//

import SwiftUI

struct IDITwo: View {
    let colors: [Color] = [.blue, .cyan, .gray, .indigo, .mint, .orange, .pink, .purple, .red]
    let symbols = ["run", "archery", "basketball", "bowling", "dance", "golf", "hiking", "jumprope", "rugby", "tennis", "volleyball", "yoga"]
    @State private var id = UUID()
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(colors.randomElement()!)
                    .padding()
                
                Image(systemName: "figure.\(symbols.randomElement()!)")
                    .font(.system(size: 144))
                    .foregroundColor(.white)
            }
            .transition(.slide)
            .id(id)
            
            Button("Change") {
                withAnimation(.easeInOut(duration: 1)) {
                    id = UUID()
                }
            }
            .buttonStyle(.borderedProminent)
            .padding(.bottom)
        }
    }
}

struct IDITwo_Previews: PreviewProvider {
    static var previews: some View {
        IDITwo()
    }
}
