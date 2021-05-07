//
//  Data1.swift
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
 Text "1st Period Rocks"
 Image classData
 //Stretch - forEach to go through all students and show text of names and number of rocks
 
 */
struct Data1N: View {
    let width1 : CGFloat = 125
    let width2 : CGFloat = 150
    let width3 : CGFloat = 80
    let height1: CGFloat = 40
    let cornerRad: CGFloat = 4
    
    struct Student: Hashable {
        var id = UUID()
        var firstName : String
        var lastName : String
        var numRocks : Int
        
    }
    //Number of hStacks should be created dynamically based on the length of the leaderboard array
    var student1 : Student = Student(firstName: "Miguel", lastName: "Sanchez", numRocks: 21)
    
    var student2 : Student = Student(firstName: "Dimitri", lastName: "Villalobos", numRocks: 19)
    
    var student3 : Student = Student(firstName: "Smadar", lastName: "Bergman", numRocks: 16)
    
    var student4 : Student = Student(firstName: "Kevin", lastName: "McQuown", numRocks: 13)
    
    var student5 : Student = Student(firstName: "Daniel", lastName: "Bang", numRocks: 9)
    
    var student6 : Student = Student(firstName: "Mia", lastName: "Harris", numRocks: 5)
    
    
    
    var body: some View {
        
        let leaderBoard1 : [Student] = [student1, student2, student3, student4, student5, student6]
        
        TabView {
            
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .frame(height: 50)
                    Text("1st Period Rocks!")
                        .font(.title)
                }
                
                HStack{
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width1, height: height1)
                        Text("First Name")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width2, height: height1)
                        Text("Last Name")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width3, height: height1)
                        Text("# of Rocks")
                        
                    }
                }
                
                HStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width1, height: height1)
                        Text(student1.firstName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width2, height: height1)
                        Text(student1.lastName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width3, height: height1)
                        Text(String(student1.numRocks))
                    }
                }
                HStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width1, height: height1)
                        Text(student2.firstName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width2, height: height1)
                        Text(student2.lastName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width3, height: height1)
                        Text(String(student2.numRocks))
                    }
                }
                
                HStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width1, height: height1)
                        Text(student3.firstName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width2, height: height1)
                        Text(student3.lastName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width3, height: height1)
                        Text(String(student3.numRocks))
                    }
                }
                
                HStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width1, height: height1)
                        Text(student4.firstName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width2, height: height1)
                        Text(student4.lastName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width3, height: height1)
                        Text(String(student4.numRocks))
                    }
                }
                
                HStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width1, height: height1)
                        Text(student5.firstName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width2, height: height1)
                        Text(student5.lastName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width3, height: height1)
                        Text(String(student5.numRocks))
                    }
                }
                
                HStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width1, height: height1)
                        Text(student6.firstName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width2, height: height1)
                        Text(student6.lastName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width3, height: height1)
                        Text(String(student6.numRocks))
                    }
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
                Image(systemName: "house")
                Text("Period 1 Data")
            }
            
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Period1N()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Period 1")
                }
            
            WelcomeScreen2()
                .tabItem {
                    Image(systemName: "hand.wave")
                    Text("Welcome")
                    
                }
        }
    }
    
    
    
    struct Data1N_Previews: PreviewProvider {
        static var previews: some View {
            Data1N()
            Data1N()
                .environment(\.locale, Locale(identifier: "es"))
        }
    }
    
}

