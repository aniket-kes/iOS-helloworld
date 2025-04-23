//
//  WebViewContainer.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 21/04/25.
//
import SwiftUI
struct WebViewContainer: View {
    var body: some View {
        WebView(urlString: "https://www.browserstack.com")
            .navigationTitle("Web View")
            .edgesIgnoringSafeArea(.bottom)
    }
}
