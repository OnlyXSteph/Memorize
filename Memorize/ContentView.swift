//
//  ContentView.swift
//  Memorize
//
//  Created by Stephanie Salgado on 5/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let emojis: [String] = ["🦈", "🦦", "🐊", "🪼"]
        
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
    }
    .foregroundColor(.red)
    .padding()
        
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
    ZStack {
        let base = RoundedRectangle(cornerRadius: 12)
        if isFaceUp {
            base.foregroundColor(.white)
            base.strokeBorder(lineWidth: 2)
            Text(content).font(.largeTitle)
        } else {
            base.fill()
        }
    }
    .onTapGesture{
        isFaceUp.toggle()
    }
}
}

#Preview {
    ContentView()
}
