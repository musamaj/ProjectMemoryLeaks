//
//  ClassA.swift
//  TestLeaks
//
//  Created by Muhammad Usama Jamil on 12/14/25.
//

final class ClassA {
    var b: ClassB?
    deinit { print("ClassA deinit") }
}

final class ClassB {
    var a: ClassA?
    deinit { print("ClassB deinit") }
}
