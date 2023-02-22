//
//  ContentView.swift
//  RockPaperScissorsGame
//
//  Created by Ashlyn Barrera on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // ignoresSafeArea() allows the color to fill the screen of VP
            Color.blue.ignoresSafeArea()
            
            VStack{
                Text("Rock Paper Sciccors Game")
                
                Text("Select Rock,Paper, or Scissor to start the game")
                
                HStack{
                    Button {
                        print("Button Clicked")
                    } label: {
                        Text("🗿")
                    }
                    
                    Button {
                        print("Button Clicked")
                    } label: {
                        Text("📜")
                    }
                    
                    Button {
                        print("Button Clicked")
                    } label: {
                        Text("✂️")
                    }
                    
                }
                ////////////////////////
                HStack{
                    VStack{
                        Text("🗿")
                        Text("Player")
                        Text("0")
                    }
                    //
                    //
                    VStack{
                        Text("🗿")
                            
                        Text("Player")
                        Text("0")
                        
                    }
                    //
                    
                    }
                Button {
                    print("Button Clicked")
                } label: {
                    Text("Restart Game")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                   }
                }
            }
        }

    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
