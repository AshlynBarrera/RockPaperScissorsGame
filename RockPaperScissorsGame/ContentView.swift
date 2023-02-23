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
                Spacer()
                
                Text("Rock Paper Sciccors Game")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                    Spacer()
                
                Text("Select Rock,Paper, or Scissor to start the game")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Button {
                        print("Button Clicked")
                    } label: {
                        Text("🗿")
                            .font(.system(size: 75))
                            .padding(.bottom, 10.0)
                            // using .system(size: int)
                        //allows foe custom size.
                            
                    }
                    Spacer()
                    Button {
                        print("Button Clicked")
                    } label: {
                        Text("📜")
                            .font(.system(size: 75))
                            .padding(.bottom, 10.0)
                    }
                    Spacer()
                    Button {
                        print("Button Clicked")
                    } label: {
                        Text("✂️")
                            .font(.system(size: 75))
                            .padding(.bottom, 10.0)
                    }
                    Spacer()
                }
                Spacer()
                ////////////////////////
                HStack{
                    Spacer()
                    VStack{
                        Text("🗿")
                            .font(.system(size: 55))
                            .padding(.bottom, 10.0)
                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text("0")
                            .foregroundColor(Color.white)
                    }
                    //
                    Spacer()
                    //
                    VStack{
                        Text("🗿")
                            .font(.system(size: 55))
                            .padding(.bottom, 10.0)
                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                    //
                    
                    }
                
                Spacer()
                
                Button {
                    print("Button Clicked")
                } label: {
                    Text("Restart Game")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.all, 10.0)
                        .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                    
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
