//
//  main.swift
//  SimpleCalc
//
//  Created by Ryan Liang on 10/5/17.
//  Copyright © 2017 Ryan Liang. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")
let response = readLine(strippingNewline: true)!
var result = "";
let arr = response.split(separator: " ")
if arr.count > 1 {
    switch arr[arr.count - 1]{
    case "count":
        result = String(arr.count - 1);
    case "avg":
        var sum = 0.0;
        for i in 0...arr.count-2 {
            sum += Double(arr[i])!
        }
        result = String(sum/Double(arr.count-1))
    case "fact":
        var n = Int(arr[0])!
        var fact = 1
        if(n == 0){
            result = "1"
        }
        else if (n < 0){
            result = "invalid input"
        }
        else {
            while n > 1 {
                fact = fact * n
                n = n - 1
            }
        }
        result = String(fact)
    default:
        print("unknown request")
    }
    
}
else{
    switch response{
    default:
        let sign = readLine(strippingNewline: true)!
        let n2 = readLine(strippingNewline: true)!
        switch sign {
        case "-":
            print("Result: " + String(Double(response)! - Double(n2)!))
        case "*":
            print("Result: " + String(Double(response)! * Double(n2)!))
        case "/":
            print("Result: " + String(Double(response)! / Double(n2)!))
        default:
            print("Result: " + String(Double(response)! + Double(n2)!))
            }
    }
}
print("Result:" + result)

