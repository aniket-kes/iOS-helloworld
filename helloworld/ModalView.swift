//
//  ModalView.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 22/04/25.
//
import SwiftUI

struct ModalView: View {
    @State private var showModal = false
    
    var body: some View {
        VStack {
            Button("Show Modal") {
                showModal.toggle()
            }
            .popover(isPresented: $showModal) {
                VStack {
                    Text("This is a modal!")
                    Button("Close") {
                        showModal.toggle()
                    }
                }
                .padding()
                .frame(width: 200, height: 150)
            }
        }
        .padding()
    }
}
