//
//  SettingsView.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 22/04/25.
//
import SwiftUI

struct SettingsView: View {
    @Binding var isDarkMode: Bool
    @State private var isNotificationsEnabled = true

    var body: some View {
        Form {
            Toggle("Dark Mode", isOn: $isDarkMode)
            Toggle("Enable Notifications", isOn: $isNotificationsEnabled)
        }
        .navigationTitle("Settings")
    }
}
