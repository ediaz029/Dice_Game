//
//  ContentView.swift
//  Dice_Game
//
//  Created by Ernesto Diaz on 2/15/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var diceNumber = 1
    @State var diceNumber2 = 1
    
    
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                Text("Ernesto Diaz").font(.largeTitle).foregroundStyle(Color.black)
                Spacer()
                Text("BEST Dice Game")
                Spacer()
                Image("cooldice").resizable()
                    .scaledToFit().padding()
                Spacer()
                HStack {
                    DiceView(n: diceNumber)
                    DiceView(n: diceNumber2)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.diceNumber = Int.random(in: 1...6)
                    self.diceNumber2 = Int.random(in: 1...6)
                   
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                }
                .background(Color.black)
                Text("")
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
