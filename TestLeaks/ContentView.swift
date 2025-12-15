//
//  ContentView.swift
//  TestLeaks
//
//  Created by Muhammad Usama Jamil on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showLeakyView = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")

                Button("Present Leaky Feature") {
                    showLeakyView = true
                }

                NavigationLink("Push Leaky Feature", isActive: $showLeakyView) {
                    LeakyView()
                }
            }
            .padding()
            .navigationTitle("Leak Demos")
        }
    }
}

#Preview {
    ContentView()
}
