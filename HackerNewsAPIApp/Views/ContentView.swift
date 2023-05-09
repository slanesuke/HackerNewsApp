//
//  ContentView.swift
//  HackerNewsAPIApp
//
//  Created by Ian Slane on 4/26/23.
//

import SwiftUI
import UIKit

struct ContentView: View {

    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        TabView {
            ProfileView()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                }
            NavView()
                .tabItem{
                    Image(systemName: "house")
                }
            PostView()
                .tabItem{
                    Image(systemName: "gear")
                }
            
        }
        .accentColor(.orange)
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


