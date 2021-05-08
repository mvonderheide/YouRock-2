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
            
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .frame(height: 100)
                HStack {
                    NavigationLink(
                        destination: StudentClass(),
                        label: {
                            Text("Recognize a Classmate")
                                .padding()
                                .frame(width: 200)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.blue)
                        })
                    NavigationLink(
                        destination: RockWall(),
                        label: {
                            Text("View the Rock Wall")
                                .padding()
                                .frame(width: 150)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.blue)
                            
                        })
                    
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


