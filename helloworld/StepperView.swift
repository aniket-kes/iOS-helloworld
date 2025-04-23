//
//  StepperView.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 22/04/25.
//
import SwiftUI

struct StepperView: View {
    @State private var quantity = 0.0 // Use Double for Slider compatibility

    var body: some View {
        VStack(spacing: 20) {
            Text("Quantity: \(Int(quantity))")
                .font(.title)

            // Stepper
            Stepper("Adjust Quantity", value: $quantity, in: 0...10, step: 1)
                .padding()

            // Slider
            Slider(value: $quantity, in: 0...10, step: 1)
                .padding()
                .accentColor(.blue)

        }
        .padding()
        .navigationTitle("Stepper + Slider")
    }
}
