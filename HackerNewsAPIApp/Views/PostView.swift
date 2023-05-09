//
//  PostView.swift
//  HackerNewsAPIApp
//
//  Created by Ian Slane on 5/9/23.
//

import SwiftUI

struct PostView: View {
    @State private var notificationsEnabled = false
    @State private var themeSelection = 0
    @State private var email = ""
    @State private var password = ""
    
    let themes = ["Light", "Dark", "System"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Notifications")) {
                    Toggle("Enable Notifications", isOn: $notificationsEnabled)
                }
                
                Section(header: Text("Theme")) {
                    Picker("Theme", selection: $themeSelection) {
                        ForEach(0..<themes.count) {
                            Text(themes[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Section(header: Text("Account")) {
                        TextField("Email", text: $email)
                        SecureField("Password", text: $password)
                    }
                    
                    Section {
                        Button("Save Changes") {
                        }
                        .accentColor(Color.orange)
                    }
                }
                .navigationBarTitle(Text("Settings"))
            }
        }
    }
    
    struct PostView_Previews: PreviewProvider {
        static var previews: some View {
            PostView()
        }
    }}
