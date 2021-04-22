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
    var body: some View {
        NavigationView {
            VStack {
                Text("1st Period")
                    .font(.title)
                Text("App Dev with Swift")
                    .font(.title3)
                    .padding()
                Text("Choose a Student")                //Text("Drop Down Menu Here")
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
    
    
    
    struct WelcomeScreen_Previews: PreviewProvider {
        static var previews: some View {
            Period1N()
        }
    }
}


