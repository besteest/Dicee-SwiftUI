//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Beste on 21.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    // immutable -> mutable
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
                
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNumber: leftDiceNumber)
                    DiceView(diceNumber: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button("Roll") {
                    
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                    
                }.font(.system(size: 50))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .background(.red)
                    .padding(.bottom)
            }
        }
    }
}

struct DiceView: View {
    
    let diceNumber: Int
    
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

#Preview {
    ContentView()
}

