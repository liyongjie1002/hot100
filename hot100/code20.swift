//
//  code20.swift
//  hot100
//
//  Created by mac on 2024/6/29.
//
// 有效的括号

import Foundation

func isValidParentheses(_ s: String) -> Bool {
    // 使用数组来模拟栈
    var stack: [Character] = []
    
    // 遍历字符串中的每个字符
    for char in s {
        if char == "(" || char == "[" || char == "{" {
            // 遇到左括号，压入栈中
            stack.append(char)
        } else {
            // 遇到右括号，检查栈顶是否匹配的左括号
            if char == ")" {
                if stack.isEmpty || stack.removeLast() != "(" {
                    return false
                }
            } else if char == "]" {
                if stack.isEmpty || stack.removeLast() != "[" {
                    return false
                }
            } else if char == "}" {
                if stack.isEmpty || stack.removeLast() != "{" {
                    return false
                }
            } else {
                // 非括号字符，直接跳过
                continue
            }
        }
    }
    
    // 最后检查栈是否为空，防止出现多余的左括号
    return stack.isEmpty
}
