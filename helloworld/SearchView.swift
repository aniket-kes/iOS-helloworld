//
//  SearchView.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 22/04/25.
//
import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    let items = ["Apple", "Banana", "Cherry", "Date", "Elderberry", "Fig", "Grape", "Honeydew", "Kiwi", "Lemon", "Mango", "Nectarine", "Orange", "Papaya", "Quince", "Raspberry", "Strawberry", "Tangerine", "Ugli fruit", "Vanilla bean", "Watermelon"]
    
    var body: some View {
        VStack {
            TextField("Search", text: $searchText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            List {
                ForEach(items.filter { searchText.isEmpty || $0.localizedCaseInsensitiveContains(searchText) }, id: \.self) { item in
                    Text(item)
                        .padding()
                }
            }
        }
        .navigationTitle("Search")
    }
}
