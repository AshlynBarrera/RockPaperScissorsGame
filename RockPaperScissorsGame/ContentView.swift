//
//  ContentView.swift
//  RockPaperScissorsGame
//
//  Created by Ashlyn Barrera on 2/22/23.
//

import SwiftUI




struct ContentView: View {
    
    //Variables
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerpick = 0
    @State var cpupick = 0
    @State var cArray = ["🗿","📜","✂️"]
    
    
    
 
    
    
    var body: some View {
        ZStack {
            // ignoresSafeArea() allows the color to fill the screen of VP
            Color.blue.ignoresSafeArea()
//===========================================================================
            // Heading Titles.
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
//====================================================================================================
                // Three choice buttons
                HStack{
                    Spacer()
                    //Rock Button
                    Button {
                        
                        let cpuRandom = Int.random(in: 0...2) // picks random Icon(variable)
                        cpupick = cpuRandom
                    //===================
                            if cpuRandom == 0 && playerpick == 0 {
                                cpuScore = cpuScore
                                playerScore = playerScore // if both == score stays the same
                            }else if cpuRandom == 1 && playerpick == 0{
                                playerScore = playerScore
                                cpuScore = cpuScore + 1
                            }else if cpuRandom == 2 && playerpick == 0{
                                playerScore = playerScore + 1
                                cpuScore = cpuScore
                            }

                     //==========================================================
                        playerpick = 0 // Sets icon
                        
                        //adds to playerScore
                    } label: {
                        Text("🗿")
                            .font(.system(size: 75))
                            .padding(.bottom, 10.0)
                            // using .system(size: int)
                        //allows foe custom size.
                            
                    }
                    Spacer()
                    //Paper Button
                    Button {
                        let cpuRandom =
                        Int.random(in: 0...2) // picks random Icon(variable)
                        cpupick = cpuRandom

                        if cpuRandom == 1 && playerpick == 1 {
                            cpuScore = cpuScore
                            playerScore = playerScore // if both == score stays the same
                        }else if cpuRandom == 0 && playerpick == 1{
                            playerScore = playerScore + 1
                            cpuScore = cpuScore
                        }else if cpuRandom == 2 && playerpick == 1{
                            playerScore = playerScore
                            cpuScore = cpuScore + 1
                        }
                        //=======================================================
                        playerpick = 1 // changes icon
                        
                    } label: {
                        Text("📜")
                            .font(.system(size: 75))
                            .padding(.bottom, 10.0)
                    }
                    Spacer()
                    // scissors button
                    Button {
                        let cpuRandom =
                        Int.random(in: 0...2) // picks random Icon(variable)
                        cpupick = cpuRandom
                        
                        if cpuRandom == 2 && playerpick == 2 {
                            cpuScore = cpuScore
                            playerScore = playerScore // if both == score stays the same
                        }else if cpuRandom == 0 && playerpick == 2{
                            playerScore = playerScore
                            cpuScore = cpuScore + 1
                        }else if cpuRandom == 1 && playerpick == 2{
                            playerScore = playerScore + 1
                            cpuScore = cpuScore
                        }
                        
                        //========================================================
                        playerpick = 2 //changes playing icon
                        
                    } label: {
                        Text("✂️")
                            .font(.system(size: 75))
                            .padding(.bottom, 10.0)
                    }
//====================================================================================================
                // player and cpu icons that show the play and keep score
                    
                    Spacer()
                }
                Spacer()
                ////////////////////////
                HStack{
                    Spacer()
                    VStack{
                        //Player Button
                        Text(cArray[playerpick]) // // icon changing
                            .font(.system(size: 55))
                            .padding(.bottom, 10.0)
                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore)) // adds score here
                            .foregroundColor(Color.white)
                    }
                    //
                    Spacer()
                    //
                    VStack{
                        //CPU Random button
                        Text(String(cArray[cpupick])) // icon changing
                            .font(.system(size: 55))
                            .padding(.bottom, 10.0)
                        Text("AIPlayer")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore)) // Adds cpu score
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
//====================================================================================================
                    
                    }
                
                Spacer()
                        // resets both score sets to zero.
                Button {
                    playerScore = 0
                    cpuScore = 0
                    playerpick = 0
                    cpupick = 0
                    
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
