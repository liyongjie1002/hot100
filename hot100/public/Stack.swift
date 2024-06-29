//
//  Stack.swift
//  hot100
//
//  Created by mac on 2024/6/29.
//

import Foundation

struct Stack<T> {
    private var elements: [T] = []

    // 是否为空栈
    var isEmpty: Bool {
        return elements.isEmpty
    }

    // 栈的大小
    var size: Int {
        return elements.count
    }

    // 压入元素到栈顶
    mutating func push(_ element: T) {
        elements.append(element)
    }

    // 弹出栈顶元素
    mutating func pop() -> T? {
        return elements.popLast()
    }

    // 返回栈顶元素但不弹出
    func peek() -> T? {
        return elements.last
    }
}
