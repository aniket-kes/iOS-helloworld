//
//  DatePickerView.swift
//  helloworld
//
//  Created by Aniket Kesarwani on 22/04/25.
//
import SwiftUI

struct DatePickerView: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            DatePicker("Select a Date", selection: $selectedDate, displayedComponents: .date)
                .padding()
            
            Text("Selected Date: \(selectedDate, formatter: dateFormatter)")
                .padding()
        }
        .navigationTitle("Date Picker")
    }
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
}
