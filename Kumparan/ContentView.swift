//
//  ContentView.swift
//  Kumparan
//
//  Created by Irianda on 30/07/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView{
            ListData()
                .tabItem{Image(systemName: "newspaper.fill")
                    Text("Posts")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
