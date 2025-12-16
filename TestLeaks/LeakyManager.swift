//
//  LeakyManager.swift
//  TestLeaks
//
//  Created by Muhammad Usama Jamil on 12/14/25.
//

import SwiftUI

final class LeakyManager {
    var timer: Timer?
    var onTick: (() -> Void)?

    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            self?.onTick?()
        }
    }

    func stop() {
        timer?.invalidate()
        timer = nil
    }

    deinit {
        print("LeakyManager deinit")
    }
}
