//
//  AutoScrollImageCarousel.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 22/04/25.
//


import SwiftUI

struct AutoScrollImageCarousel: View {
    let images: [String]
    @State private var currentIndex = 0
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()

    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(images.indices, id: \.self) { index in
                Image(images[index])
                    .resizable()
                    .scaledToFit()
                    .tag(index)
                    .frame(height: 250)
                    .clipped()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 250)
        .onReceive(timer) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % images.count
            }
        }
    }
}
