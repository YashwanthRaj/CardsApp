//
//  ContentView.swift
//  Cards App
//
//  Created by Yashwanth Raj Varadharajan on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Image("background-plain")
            
            VStack{
                Spacer()
                Spacer()
                Image("logo")
                
                Spacer()
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                
                Spacer()
                Image("button")
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player 1")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text("0")
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text("0")
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
}

#Preview {
    ContentView()
}
