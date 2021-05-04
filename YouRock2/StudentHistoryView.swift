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
            Text("1st Period")
                .font(.title)
            Text("App Dev with Swift")
                .font(.title3)
                .padding()
            Text("Choose a Classmate")
            //NavigationLink(
            //   destination: ChooseCategory(),
            //    label: {
            //     Text(student1.firstName + " " + student1.lastName)
            //  })
            
            //Drop down menu starts here (includes frameworks and state variable)
            Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                ForEach(0 ..< frameworks.count) {
                    Text(self.frameworks[$0])
                }
            }
            NavigationLink(
                destination: ChooseCategory(),
                label: {
                    Text("\(frameworks[selectedFrameworkIndex])")
                  
                })
        Spacer()
            NavigationLink(
                destination: WelcomeScreen2(),
                label: {
                    Text("Start Over")
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



