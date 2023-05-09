//
//  DetailView.swift
//  HackerNewsAPIApp
//
//  Created by Ian Slane on 4/28/23.
//

import SwiftUI
import WebKit

struct DetailView: View {

    let url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"http://google.com")
    }
}


