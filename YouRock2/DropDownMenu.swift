//
//  DropDownMenu.swift
//  YouRock2
//
//  Created by admin on 4/27/21.
//

import SwiftUI

struct DropDownMenu: View {
    var frameworks = ["UIKit", "Core Data", "CloudKit", "SwiftUI"]
       @State private var selectedFrameworkIndex = 0

       var body: some View {
          VStack {
            Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                ForEach(0 ..< frameworks.count) {
                   Text(self.frameworks[$0])
                }
             }
             Text("Your favorite framework: \(frameworks[selectedFrameworkIndex])")
          }.padding()
       }
    }

struct DropDownMenu_Previews: PreviewProvider {
    static var previews: some View {
        DropDownMenu()
    }
}
