//
//  ScrollTestView.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 21/04/25.
//

import SwiftUI

struct VerticalListView: View {
    let items = Array(1...20).map { "Item \($0)" }
    
    var body: some View {
        List(items, id: \.self) { item in
            Text(item)
        }
        .navigationTitle("Vertical List")
    }
}

