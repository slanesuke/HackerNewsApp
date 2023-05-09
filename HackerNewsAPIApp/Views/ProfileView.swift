//
//  ProfileView.swift
//  HackerNewsAPIApp
//
//  Created by Ian Slane on 5/9/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var company = ""

    var body: some View {
        NavigationView{
            VStack{
                ProfileImage(imagename: "IMG_4987")
                Form{
                    Section(header: Text("Personal Info")){
                        TextField("First Name", text: $firstname)
                        TextField("Last Name", text: $lastname)
                        TextField("Company", text: $company)
                    }
                    .navigationTitle("Profile")
                    Section{
                        Button("Save Changes"){

                        }
                        .accentColor(Color.orange)
                    }
                }

            }


        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct ProfileImage: View{
    var imagename: String
    var body: some View{
        Image(imagename)
            .resizable()
            .frame(width: 110, height: 110)
            .clipShape(Circle())
    }

}
