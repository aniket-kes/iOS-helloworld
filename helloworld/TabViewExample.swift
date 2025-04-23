//
//  TabViewExample.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 22/04/25.
//
import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            WebViewContainer()
                .tabItem {
                    Label("WebView", systemImage: "wifi")
                }
        }
        .accentColor(.blue)
    }
}
