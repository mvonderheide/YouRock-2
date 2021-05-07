//
//  ChooseCategory.swift
//  YouRock!
//
//  Created by admin on 4/20/21.
//

import SwiftUI
import AppDevWithSwiftLibrary
/*
 NavigationView
 Image miniLogoBar
 VStack
 Text "Choose a Category"
 NavigationLink
 destination:
 //Stretch - Add a forEach loop for categories
 //Stretch - Pull the name of the category page (SocialAwareness.swift and its name
 
 
 */
struct ChooseCategory: View {
    let bWidth : CGFloat = 250
    let bHeight : CGFloat = 40
    var body: some View {
        
        TabView {
            
            VStack {
                Text("Choose a Category")
                    .font(.title)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .frame(height: 100)
                    
                
                    NavigationLink(
                        destination: Text("Relationship Skills"),
                        label: {
                            Text("Relationship Skills")
                                .padding()
                                .foregroundColor(.blue)
                            
                        })
                    
                }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .frame(height: 100)
                    NavigationLink(
                        destination: Text("ResponsibleDecisionMaking"),
                        label: {
                            
                            Text("Responsible Decision-Making")
                                .padding()
                                .foregroundColor(.blue)
                            
                            
                        })
                    
                }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .frame(height: 100)
                    NavigationLink(
                        destination: Text("SelfAwareness"),
                        label: {
                            Text("Self-Awareness")
                                .padding()
                                .foregroundColor(.blue)
                        })
                    
                }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .frame(height: 100)
                    NavigationLink(
                        destination: SelfManagement(),
                        label: {
                            
                            Text("Self-Management")
                                .padding()
                                .foregroundColor(.blue)
                            
                        })
                    
                }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .frame(height: 100)
                    NavigationLink(
                        destination: Text("SocialAwareness"),
                        label: {
                            
                            Text("Social Awareness")
                                .padding()
                                .foregroundColor(.blue)
                            
                        })
                    
                }
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
                Image(systemName: "list.bullet")
                Text("SEL Category")
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
    
    struct ChooseCategory_Previews: PreviewProvider {
        static var previews: some View {
            ChooseCategory()
            ChooseCategory()
                .environment(\.locale, Locale(identifier: "es"))
        }
    }
}



