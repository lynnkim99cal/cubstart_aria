//
//  ContentView.swift
//  HoldingPaws
//
//  Created by Aria Chen on 2022/4/24.
//


import SwiftUI


let GreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView : View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Welcome()
            Logo()
            TextField("Username", text: $username)
                .padding()
                .background(GreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(GreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            Button(action: {print("Button tapped")}) {
               LoginButtonContent()
            }
        }
        .padding()
        .background(
            Image("background")
            .resizable()
            //.scaledToFill()
        
            .aspectRatio(contentMode: .fill)
        )
    }
}


struct Welcome : View {
    var body: some View {
        return Text("Welcome!")
            .font(.largeTitle)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct Logo : View {
    var body: some View {
        return Image("paw")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .padding(.bottom, 75)
    }
}

struct LoginButtonContent : View {
    var body: some View {
        return Text("Go!")
            .font(.title)
            .foregroundColor(.white)
            .padding()
            
    }
}
