//
//  FormView.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 21/04/25.
//

import SwiftUI

struct FormView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var isSubscribed = false
    @State private var showAlert = false
    @State private var selectedButton = ""
    
    var body: some View {
        Form {
            Section(header: Text("User Info")) {
                TextField("Name", text: $name)
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
            }
            
            Section {
                Toggle("Subscribe to newsletter", isOn: $isSubscribed)
            }
            
            Section {
                Button("Submit") {
                    print("Name: \(name), Email: \(email), Subscribed: \(isSubscribed)")
                    showAlert = true
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Form Submitted"),
                        message: Text("Name: \(name), Email: \(email), Subscribed: \(isSubscribed)"),
                        dismissButton: .default(Text("OK"))
                    )
                }
            }
        }
        .navigationTitle("User Form")
    }
}
