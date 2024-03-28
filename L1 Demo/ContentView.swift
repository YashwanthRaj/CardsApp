//
//  ContentView.swift
//  Cards App
//
//  Created by Yashwanth Raj Varadharajan on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard:String = "card2"
    @State var cpuCard:String = "card3"
    
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
            
            VStack{
                // Display
                Spacer()
                Spacer()
                Image("logo")
                
                // The two cards that are to be compared
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
               
                // The button which performs action of comparision and changes the cards
                Spacer()
                Button(action: {
                    clickButton()
                }, label: {
                    Image("button")
                })
                
                // This section displayes the scores
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player 1")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                Spacer()
                
            }
        }
    }
    
    // Fuction to display and compute the score
    func clickButton(){
        // Randomize player card
        var playerInt:Int = Int.random(in: 2...14)
        playerCard = "card" + String(playerInt)
        
        // Randomize cpu card
        var cpuInt:Int = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuInt)
        
        // Update the score
        if playerInt > cpuInt{
            playerScore += 1
        }
        else if cpuInt > playerInt{
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
