//
//  StudentRecognition.swift
//  YouRock2
//
//  Created by admin on 4/22/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

struct StudentRecognition: View {
    var body: some View {
        
        TabView {
            
            
            VStack {
                
                Text("Miguel, you rock because you exhibited self-discipline and perseverance!")
                    .padding()
                
                Image("Perseverance2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                    .padding(100)
                
            }
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
            }.tabItem{
                Image(systemName: "hand.thumbsup")
                Text("Student Recognition")
            }
            
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            WelcomeScreen2()
                .tabItem {
                    Image(systemName: "hand.wave")
                    Text("Welcome")
                    
                }
            
            Period1N()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Period 1")
                }
        }
        
    }
    struct StudentRecognition_Previews: PreviewProvider {
        static var previews: some View {
            StudentRecognition()
            StudentRecognition()
                .environment(\.locale, Locale(identifier: "es"))
        }
    }
}

