//
//  Period1.swift
//  YouRock!
//
//  Created by admin on 4/16/21.
//
 
import SwiftUI
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
struct Period1N: View {
    
    struct Student: Hashable {
        var id = UUID()
        var firstName : String
        var lastName : String
        var numRocks : Int
    }
    
    var student1 : Student = Student(firstName: "Miguel", lastName: "Sanchez", numRocks: 4)
    
    var body: some View {
        
            VStack {
                Text("1st Period")
                    .font(.title)
                Text("App Dev with Swift")
                    .font(.title3)
                    .padding()
                Text("Choose a Student")
                NavigationLink(
                    destination: ChooseCategory(),
                    label: {
                        Text(student1.firstName + " " + student1.lastName)
                    })
                
                
                //Text("Drop Down Menu Here")
                Image("rockWall1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .padding(50)
                    
                NavigationLink(
                    destination: StudentRecognition(),
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
    
    
    struct Period1N_Previews: PreviewProvider {
        static var previews: some View {
            Period1N()
        }
    }



