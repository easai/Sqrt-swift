//
//  main.swift
//  Sqrt
//
//  Created by E A on 8/16/24.
//
import Foundation

class Solution {
    func mySqrt(_ x: Int) -> Int {
        var y = 1.0
        var prev = 0.0
        while abs(y - prev) >= 1 {
            prev = y
            y = (prev + Double(x) / prev) / 2.0
        }
        while (y + 1.0) * (y + 1.0) < Double(x) {
            y += 1
        }
        return Int(y)
    }

    func test() {
        let x = 14
        let res = mySqrt(x)
        let ans = sqrt(Double(x))
        print(res)
        print(ans)
        print(res == Int(ans))
    }
}

Solution().test()
