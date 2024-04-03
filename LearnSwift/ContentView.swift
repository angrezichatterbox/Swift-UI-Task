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
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {  Text("Tab Content 1") }
                    .navigationTitle("News")
            }
           .tabItem { Text("News") }.tag(1)
            NavigationView{
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {  Text("Tab Content 2") }
                    .navigationTitle("Products")
            }
            .tabItem { Text("Products") }.tag(2)
            NavigationView{
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {  Text("Tab Content 3") }
                    .navigationTitle("Chat")
            }
           .tabItem { Text("Chat") }.tag(3)
           
        }
    }
}

#Preview {
    ContentView()
}
