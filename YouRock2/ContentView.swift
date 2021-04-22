//
//  ContentView.swift
//  YouRock!
//
//  Created by admin on 4/16/21.
//
import SwiftUI
/*
 Navigation view
 VStack of
 Image of logo
 Navigation link
 destination WelcomeScreen
 label "Get Started"
 */
struct ContentView: View {
    
    struct Teacher : Hashable {
        var id = UUID()
        var prefix : String
        var firstName : String
        var lastName : String
        var classes : [Class]
    }
    
    struct Class: Hashable {
        var id = UUID()
        var period : String
        var className : String
        //var roster : [Student]
    }
    
    var teacher1 : Teacher = Teacher(prefix: "Mr. ", firstName: "Matthew ", lastName: "Vonderheide",
        classes : [])
    
    var class1 : Class = Class(period: "1", className: "App Dev with Swift")
    
    var body: some View {
        NavigationView {
            VStack {
                Image("youRock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                    .padding(100)
                NavigationLink(
                    destination: WelcomeScreen2(),
                    label: {
                        Text("Get Started, " + teacher1.prefix + teacher1.firstName + teacher1.lastName)
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



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


