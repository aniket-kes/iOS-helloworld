import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var isDarkMode = false
    
    var body: some View {
        TabView {
            NavigationStack {
                VStack(spacing: 20) {
                    NavigationLink("Go to Vertical List") {
                        VerticalListView()
                    }
                    .buttonStyle(.borderedProminent)

                    NavigationLink("Go to Horizontal Button List") {
                        HorizontalScrollView()
                    }
                    .buttonStyle(.borderedProminent)

                    NavigationLink("Web View") {
                        WebViewContainer()
                    }
                    .buttonStyle(.borderedProminent)

                    NavigationLink("Form View") {
                        FormView()
                    }
                    .buttonStyle(.borderedProminent)

                    NavigationLink("Gallery View") {
                        ImageGalleryView()
                    }
                    .buttonStyle(.borderedProminent)

                    NavigationLink("Search View") {
                        SearchView()
                    }
                    .buttonStyle(.borderedProminent)

                    NavigationLink("Stepper View") {
                        StepperView()
                    }
                    .buttonStyle(.borderedProminent)

                    NavigationLink("Date Picker View") {
                        DatePickerView()
                    }
                    .buttonStyle(.borderedProminent)
                    
                    NavigationLink("Modal View") {
                        ModalView()
                    }
                    .buttonStyle(.borderedProminent)
                    
                    NavigationLink("AutoScroll View") {
                        AutoScrollImageCarousel(images: ["img","img1", "imgg", "imggg", "f1img"])
                    }
                    .buttonStyle(.borderedProminent)
                    
                    NavigationLink("Settings View") {
                        NavigationStack {
                            SettingsView(isDarkMode: $isDarkMode)
                        }
                    }
                    .buttonStyle(.borderedProminent)

                    Spacer()
                }
                .padding()
                .navigationTitle("Home")
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }

            // Search tab
            NavigationStack {
                SearchView()
            }
            .tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }

            // Gallery tab
            NavigationStack {
                WebViewContainer()
            }
            .tabItem {
                Label("Web", systemImage: "wifi")
            }
        }
        .accentColor(.blue)
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}


#Preview {
    ContentView()
}

