//
//  ImageGalleryView.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 21/04/25.
//
import SwiftUI

struct ImageGalleryView: View {
    let images = ["img","img1", "imgg", "imggg", "f1img"]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(images, id: \.self) { name in
                    Image(name)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 150)
                        .clipped()
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle("Gallery")
    }
}
