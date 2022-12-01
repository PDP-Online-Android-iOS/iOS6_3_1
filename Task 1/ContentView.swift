//
//  ContentView.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 01/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var data = Data()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("User ID", text: $data.userID)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 40)
                
                TextField("User PW", text: $data.userPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink (
                    destination: SecondScreen(info: data),
                    label: {
                        Text("Open Second Screen").padding()
                    }
                )
            }
            .padding()
            .navigationBarTitle("Observable Object", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
