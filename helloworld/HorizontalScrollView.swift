//
//  ButtonTestView.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 21/04/25.
//

import SwiftUI

struct HorizontalScrollView: View {
    let items = Array(1...10).map { "Button \($0)" }
    
    @State private var showAlert = false
    @State private var selectedButton = ""
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(items, id: \.self) { title in
                    Button(action: {
                        selectedButton = title
                        showAlert = true
                    }) {
                        Text(title)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Horizontal Buttons")
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Button Tapped"),
                message: Text("\(selectedButton) was tapped!"),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}
