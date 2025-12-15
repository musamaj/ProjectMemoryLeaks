//
//  LeakyView.swift
//  TestLeaks
//
//  Created by Muhammad Usama Jamil on 12/14/25.
//

import SwiftUI

struct LeakyView: View {
    @StateObject private var model = LeakyViewModel()

    var body: some View {
        VStack(spacing: 12) {
            Text("Leaky Feature Running…")
            Text("Ticks: \(model.tickCount)")
                .monospacedDigit()

            Button("Trigger Mutual Strong Cycle") {
                model.createMutualCycle()
            }

            Button("Dismiss View") {
                // This will pop the view, but due to leaks, model may never deinit
                model.requestDismiss()
            }
        }
        .padding()
        .onAppear { model.start() }
        .onDisappear { model.stopWithoutBreakingCycle() }
        .navigationTitle("Leaky Feature")
    }
}
