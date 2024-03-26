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
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 10.0) {
                
                Image("niagarafalls")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                
                HStack {
                    Text("Niagara Falls")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    VStack{
                        
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName:"star.leadinghalf.fill")
                        }
                        .foregroundColor(.orange)
                        
                        Text("(Reviews 241)")
                    }
                    .font(.caption)
                    
                }
                
                Text("Come visit in summer, spring and winter if you are willing to do anything for the travel")
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray)
                .font(.caption)
            }
            .padding()
            .background(Rectangle().foregroundColor(.white).cornerRadius(15)
                .shadow(radius: 15))
            .padding()
        }

        
    }
}

#Preview {
    ContentView()
}
