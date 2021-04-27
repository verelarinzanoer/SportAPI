//
//  ContentView.swift
//  SportAPI
//
//  Created by MACBOOK on 16/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SportList()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("News")
                }
            Profile()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("about")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
