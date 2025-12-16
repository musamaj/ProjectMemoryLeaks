//
//  LeakyViewModel.swift
//  TestLeaks
//
//  Created by Muhammad Usama Jamil on 12/14/25.
//

import Combine

final class LeakyViewModel: ObservableObject {
    @Published var tickCount: Int = 0

    private let manager = LeakyManager()

    private var a: ClassA?
    private var b: ClassB?

    /// Optional closure for external hooks; does not capture self by default
    private var notifier: (() -> Void)?

    init() {
        manager.onTick = { [weak self] in
            self?.handleTick()
        }
    }

    func start() {
        manager.start()
    }

    func stopWithoutBreakingCycle() {
        manager.stop()
        manager.onTick = nil
        notifier = nil
        a = nil
        b = nil
    }

    func createMutualCycle() {
        let a = ClassA()
        let b = ClassB()
        a.b = b
        b.a = a
        self.a = a
        self.b = b
    }

    func requestDismiss() {
    }

    private func handleTick() {
        tickCount += 1
        notifier?()
    }

    deinit {
        print("LeakyViewModel deinit")
    }
}
