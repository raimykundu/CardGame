//
//  ContentView.swift
//  War Card Game
//
//  Created by Amitava on 9/2/25.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore  = 0
    @State var cpuScore = 0
   
    var body: some View {
        ZStack{
            Spacer()
            Image("background-plain").resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    }
                Spacer()
            
                Button {deal()} label: {Image("button")}
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("player").font(.headline).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(Color.white)
                Spacer()
                
                HStack{
                    Spacer()
                    Button{reset()} label: {Image(systemName: "arrow.clockwise.circle.fill")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .scaledToFit()
                            .foregroundColor(Color.white)}
                    Spacer()
                    
                }
              
                   
            }
        }
    }
    func deal(){
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        if playerCardValue > cpuCardValue{
            playerScore = playerScore+1
        }
        else if cpuCardValue > playerCardValue{
            cpuScore = cpuScore+1
        }
    }
    func reset(){
        playerScore = 0
        cpuScore = 0
    }
}

#Preview {
    ContentView()
}
