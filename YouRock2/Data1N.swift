//
//  Data1.swift
//  YouRock!
//
//  Created by admin on 4/16/21.
//
 
import SwiftUI
/*
 NavigationView
    Image miniLogoBar
    VStack
        Text "1st Period Rocks"
        Image classData
        //Stretch - forEach to go through all students and show text of names and number of rocks
        
 */
struct Data1N: View {
    struct Student: Hashable {
        var id = UUID()
        var firstName : String
        var lastName : String
        var numRocks : Int
    }
    //Number of hStacks should be created dynamically based on the length of the leaderboard array
    var student1 : Student = Student(firstName: "Miguel", lastName: "Sanchez", numRocks: 4)
    
    var student2 : Student = Student(firstName: "Dimitri", lastName: "Villalobos", numRocks: 3)
    
    var student3 : Student = Student(firstName: "Smadar", lastName: "Bergman", numRocks: 20)
    
    var student4 : Student = Student(firstName: "Kevin", lastName: "McQuown", numRocks: 100)
    
    var student5 : Student = Student(firstName: "Daniel", lastName: "Bang", numRocks: 45)
    
    var student6 : Student = Student(firstName: "Mia", lastName: "Harris", numRocks: 60)
    
    

    var body: some View {
        
        let leaderBoard1 : [Student] = [student1, student2, student3, student4, student5, student6]
        
        NavigationView {
            VStack {
               
                Text("1st Period Rocks!")
                    .font(.title)
                HStack{
                    Text(student1.firstName + " ")
                    Text(student1.lastName + " ")
                    Text(String(student1.numRocks))
                }
                HStack{
                    Text(student2.firstName + " ")
                    Text(student2.lastName + " ")
                    Text(String(student2.numRocks))
                }
                HStack{
                    Text(student3.firstName + " ")
                    Text(student3.lastName + " ")
                    Text(String(student3.numRocks))
                }
                HStack{
                    Text(student4.firstName + " ")
                    Text(student4.lastName + " ")
                    Text(String(student4.numRocks))
                }
                HStack{
                    Text(student5.firstName + " ")
                    Text(student5.lastName + " ")
                    Text(String(student5.numRocks))
                }
                HStack{
                    Text(student6.firstName + " ")
                    Text(student6.lastName + " ")
                    Text(String(student6.numRocks))
                }
                
                
                HStack{
                    NavigationLink(
                        destination: Period1N(),
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
    }
    
    
    struct WelcomeScreen_Previews: PreviewProvider {
        static var previews: some View {
            Data1N()
        }
    }
}


