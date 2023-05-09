//
//  NavView.swift
//  HackerNewsAPIApp
//
//  Created by Ian Slane on 5/9/23.
//

import SwiftUI

struct NavView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) {post in 
                NavigationLink(destination: DetailView(url: post.url), label: {
                    HStack {
                        Text(String(post.points))
                            .bold()
                        Text(post.title)
                    }
                })
            }
            .navigationTitle("Hacker News App")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                Button{
                    print("Saved")
                } label: {
                    Label("Save", systemImage: "square.and.arrow.down")
                }
            }
            .accentColor(Color.orange)
            .onAppear{
                networkManager.fetchData()
            }
        }
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
