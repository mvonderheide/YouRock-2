//
//  Period1N.swift
//  YouRock3
//
//  Created by admin on 5/4/21.
//

import SwiftUI

struct Period1N: View {
    
    
    @Binding var rosterPeriod1N : [Student]
    @State var selectedStudent = Student()
    @State var selectedStudentName = ""
    @State var names = [String]()
    
    //    var names = ["Daniel Bang", "Smadar Bergman", "Mia Harris", "Kevin McQuown", "Miguel Sanchez", "Dimitri Villalobos"]
    
    var body: some View {
        
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .frame(height: 100)
                
                VStack { Text("1st Period")
                    .font(.title)
                    Text("Exploring Computer Science")
                        .font(.title3)
                    
                }
                
            }
            Spacer()
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .frame(height: 50)
                Text("Choose a Student")
            }
            
            
            Picker(selection: $selectedStudentName, label: Text("")) {
                ForEach(names, id: \.self) { name in
                    Text(name)
                }
            }
            
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .frame(height: 50)
                NavigationLink(
                    destination: ChooseCategory(),
                    label: {
                        Text("Choose an SEL Category")
                    })
            }
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .frame(height: 50)
                Button(action: {
                    let idx = getIndex()
                    rosterPeriod1N[idx].numRocks += 1
                    
                }, label: {
                    Text("Add Rock for \(selectedStudentName)")
                })
            }
            Spacer()
        }
        .onAppear{
            names.removeAll() // initialize array to empty
            for s in rosterPeriod1N {
                names.append(s.firstName +  " " + s.lastName)
                
            }
            print(names)
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
    func getIndex() -> Int {
        return names.firstIndex(of: selectedStudentName)!
    }
}


//
//struct Period1N_Previews: PreviewProvider {
//    static var previews: some View {
//        Period1N()
//    }
//}
//onAppear doesn't seem to populate the names array by the time we get to this picker
//            Picker(selection: $selectedIndex, label: Text("")) {
//                ForEach(names, id: \.self) {
//                    Text($0)
//                }
//            }
////
////  Period1.swift
////  YouRock!
////
////  Created by admin on 4/16/21.
////
//
//import SwiftUI
//import AppDevWithSwiftLibrary
///*
// NavigationView
// Image miniLogoBar
// VStack
// Text class.period
// Text class.className
// Text "Choose a Student"
// //Replace with a drop down menu
// NavigationLink
// destination: ChooseCategory
// label: "Dimitri Villalobos"
// Image rockWall
//
// */
//struct Period1N: View {
//
//    @Binding var rosterPeriod1N : [Student]
//    @State var selectedStudent = Student()
//    @State var selectedStudentName = ""
//    @State var names = [String]()
//
//    var body: some View {
//
//        VStack {
//            Spacer()
//            ZStack {
//                Rectangle()
//                    .foregroundColor(.white)
//                    .shadow(radius: 5)
//                    .frame(height: 100)
//
//                VStack { Text("1st Period")
//                    .font(.title)
//                    Text("App Dev with Swift")
//                        .font(.title3)
//                        .padding()
//                }
//
//            }
//            Spacer()
//            ZStack {
//                Rectangle()
//                    .foregroundColor(.white)
//                    .shadow(radius: 5)
//                    .frame(height: 50)
//                Text("Choose a Student")
//            }
//            //NavigationLink(
//            //   destination: ChooseCategory(),
//            //    label: {
//            //     Text(student1.firstName + " " + student1.lastName)
//            //  })
//
//            //Drop down menu starts here (includes frameworks and state variable)
//            Picker(selection: $selectedStudentName, label: Text("")) {
//                ForEach(names, id: \.self) { name in
//                    Text(name)
//                }
//            }
//
//                NavigationLink(
//                    destination: ChooseCategory(),
//                    label: {
//                        Text("\(selectedStudentName)")
//                    })
//
//            Button(action: {
//                let idx = getIndex()
//                rosterPeriod1N[idx].numRocks += 1
//
//            }, label: {
//                Text("Add Rock for \(selectedStudentName)")
//            })
//
//            Image("rockWall1")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 500)
//                .padding(50)
//
//            NavigationLink(
//                destination: WelcomeScreen2(),
//                label: {
//                    Text("Start Over")
//                })
//        }
//        .onAppear{
//            names.removeAll() // initialize array to empty
//            for s in rosterPeriod1N {
//                names.append(s.firstName +  " " + s.lastName)
//
//            }
//            print(names)
//        }
//        .navigationBarTitleDisplayMode(.inline)
//        .toolbar {
//            ToolbarItem(placement: .principal) {
//                HStack {
//                    Image("youRock")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50
//                        )
//                        .padding(100)
//
//                }
//            }
//        }
//    }
//    func getIndex() -> Int {
//        return names.firstIndex(of: selectedStudentName)!
//    }
//}
//
//
//    struct Period1N_Previews: PreviewProvider {
//        static var previews: some View {
//            Period1N()
//            Period1N()
//                .environment(\.locale, Locale(identifier: "es"))
//        }
//    }
//
