//
//  ContentView.swift
//  LearnSwift
//
//  Created by Gautham Mohanraj on 03/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            NavigationView {
                    List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Text("Text")
                                .font(.title2)
                                .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        }
                        
                    }
                    .navigationTitle("Destinations")
            }
           .tabItem { Label("Destinations", systemImage: "airplane.departure") }.tag(1)
            NavigationView{
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {  Text("Tab Content 2") }
                    .navigationTitle("Experience")
            }
            .tabItem { Label("Experience", systemImage: "books.vertical.fill") }.tag(2)
            NavigationView{
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {  Text("Tab Content 3") }
                    .navigationTitle("Chat")
            }
            .tabItem { Label(
                title: { Text("Chat") },
                icon: { Image(systemName: "message.fill") }
            )}.tag(3)
        }
    }
}

#Preview {
    ContentView()
}
