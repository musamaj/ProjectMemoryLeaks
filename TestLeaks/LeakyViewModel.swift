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

    private var notifier: (() -> Void)?

    init() {
        notifier = {
            self.tickCount += 1
        }

        manager.onTick = { [unowned self] in
            self.tickCount += 1
            self.notifier?()
        }
    }

    func start() {
        manager.start()
    }

    func stopWithoutBreakingCycle() {
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

    deinit {
        print("LeakyViewModel deinit")
    }
}
