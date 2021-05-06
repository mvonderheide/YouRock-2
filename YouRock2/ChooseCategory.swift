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
                
                NavigationLink(
                    destination: Text("RelationshipSkills"),
                    label: {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .frame(width: bWidth, height: bHeight)
                            Text("Relationship Skills")
                                .foregroundColor(.white)
                            
                            
                        }
                        
                    })
                NavigationLink(
                    destination: Text("ResponsibleDecisionMaking"),
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .frame(width: bWidth, height: bHeight)
                            Text("Responsible Decision-Making")
                                .foregroundColor(.white)
                            
                        }
                    })
                NavigationLink(
                    destination: Text("SelfAwareness"),
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .frame(width: bWidth, height: bHeight)
                            Text("Self-Awareness")
                                .foregroundColor(.white)
                            
                        }
                    })
                NavigationLink(
                    destination: SelfManagement(),
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .frame(width: bWidth, height: bHeight)
                            Text("Self-Management")
                                .foregroundColor(.white)
                            
                        }
                        
                    })
                NavigationLink(
                    destination: Text("SocialAwareness"),
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .frame(width: bWidth, height: bHeight)
                            Text("Social Awareness")
                                .foregroundColor(.white)
                            
                        }
                    })
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



