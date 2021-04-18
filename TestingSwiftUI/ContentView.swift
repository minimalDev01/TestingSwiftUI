//
//  ContentView.swift
//  TestingSwiftUI
//
//  Created by Sergio Carralero Nuño on 18/4/21.
//

import SwiftUI

// Background color
struct Settings {
    static let facebookColor = Color(red: 56/255, green: 87/255, blue: 163/255)
}

// Reuse the same textfield for both email and password fields
struct CustomTextField: View {
    @State var emailValue: String = ""
    var placeholder: String = ""
    
    var body: some View {
        TextField(placeholder, text: $emailValue)
            .padding(.all, 20.0)
            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            .accentColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
            .cornerRadius(25)
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20.0) {
                Image("logo")
                    .resizable()
                    .frame(width: 250, height: 54)
                    .clipped()
                    .scaledToFill()
                
                Text("Log in to continue")
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(10)
                
                CustomTextField(placeholder: "Email")
                CustomTextField(placeholder: "Password")
                
                Button(action: {
                    // Action to execute
                    
                }, label: {
                    Text("Log in")
                        .fontWeight(.medium)
                        .padding(.all)
                        .background(Color.white.opacity(0.3))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                })
            }
            .padding([.top, .leading, .trailing], 50)
        }
        .background(Settings.facebookColor)
        .edgesIgnoringSafeArea(.all)
    }
}

// Not editable, only for preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
