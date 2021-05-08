//
//  Period1.swift
//  YouRock!
//
//  Created by admin on 4/16/21.
//

import SwiftUI
import AppDevWithSwiftLibrary
/*
 NavigationView
 Image miniLogoBar
 VStack
 Text class.period
 Text class.className
 Text "Choose a Student"
 //Replace with a drop down menu
 NavigationLink
 destination: ChooseCategory
 label: "Dimitri Villalobos"
 Image rockWall
 
 */
struct StudentHistoryView: View {
    var frameworks = ["Daniel Bang", "Smadar Bergman", "Mia Harris", "Kevin McQuown", "Miguel Sanchez", "Dimitri Villalobos"]
    
    @State private var selectedFrameworkIndex = 0
    
    struct Student: Hashable {
        var id = UUID()
        var firstName : String
        var lastName : String
        var numRocks : Int
    }
    
    var student1 : Student = Student(firstName: "Miguel", lastName: "Sanchez", numRocks: 4)
    
    var body: some View {
        TabView {
            VStack {
                Spacer()
                Text("Hi Miguel!")
                    .font(.title)
                Text("You Rock!")
                    .font(.title3)
                    .padding()
                Text("You have earned 6 rocks!")
                
                Image("studentHistory")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                Spacer()
                
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
                Image(systemName: "hand.wave")
                Text("My Page")
            }
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            StudentClass()//Was Data1 and worked fine.  When changed to StudentClass it adds another Home button
                .tabItem {
                    Image(systemName: "person.3")
                    Text("My Class")
                }
            
            RockWall()
                .tabItem {
                    Image(systemName: "triangle")
                    Text("Rock Wall")
                }
        }
    }
    
    struct StudentHistoryView_Previews: PreviewProvider {
        static var previews: some View {
            StudentHistoryView()
            StudentHistoryView()
                .environment(\.locale, Locale(identifier: "es"))
        }
    }
    
    
    
}
