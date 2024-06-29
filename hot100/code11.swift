//
//  code11.swift
//  hot100
//
//  Created by mac on 2024/6/29.
//
// 盛水最大的容器

import Foundation

func maxArea(nums: [Int]) -> Int {
    
    var result = 0
    var left = 0
    var right = nums.count - 1
    while left < right {
        result = max(result, (right - left)*min(nums[left], nums[right]))
        if nums[left] > nums[right] {
            right = right - 1
        } else {
            left = left + 1
        }
    }
    return result
}
