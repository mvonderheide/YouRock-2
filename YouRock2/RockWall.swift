//
//  RockWall.swift
//  YouRock2
//
//  Created by admin on 5/7/21.
//

import SwiftUI

struct RockWall: View {
    var body: some View {
        VStack {
            ZStack {
                
                VStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(color: .red, radius: 5)
                            .frame(height: 50)
                        
                        Text("1st Period Rocks!")
                            .font(.title)
                    }
                    Image("rockWall")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                }
            }
            
            Image("leaderBoard")
                .resizable()
                .scaledToFit()
                .frame(width: 350)
                
                
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Image("youRock")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50
                                )
                                .padding(100)
                        }
                    }
                }
        }
    }
    struct RockWall_Previews: PreviewProvider {
        static var previews: some View {
            RockWall()
        }
    }
}
