//
//  HackerNewsAPIAppApp.swift
//  HackerNewsAPIApp
//
//  Created by Ian Slane on 4/26/23.
//

import SwiftUI
import UIKit

@main

struct HackerNewsAPIAppApp: App {

    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
