//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 4/6/17.
//  Copyright © 2017 iGuest. All rights reserved.
//

import Foundation

//Calculator

func add(left: Int, right: Int) -> Int {
    return left + right
}

func subtract(left: Int, right: Int) -> Int {
    return left - right
}

func multiply(left: Int, right: Int) -> Int {
    return left * right
}

func divide(left: Int, right: Int) -> Int {
    return left / right
}

func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right);
}

//Array Fun

func add(array: [Int]) -> Int {
    var sum = 0;
    for num in array {
        sum += num;
    }
    return sum;
}

func multiply(array: [Int]) -> Int {
    var product = 1;
    for num in array {
        product *= num;
    }
    return product;
}

func count(array: [Int]) -> Int {
    return array.count;
}

func average(array: [Int]) -> Int {
    var sum = 0;
    for num in array {
        sum += num;
    }
    return sum / array.count;
}

func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array);
}

//Points

func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int){
    return (p1.0 + p2.0, p1.1 + p2.1)
}
func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int){
    return (p1.0 - p2.0, p1.1 - p2.1)
}

//Points as Dictionaries

//Int functions
func add(p1: [String : Int]?, p2: [String : Int]?) -> [String : Int]? {
    if (p1?["x"] == nil || p2?["x"] == nil || p1?["y"] == nil || p2?["y"] == nil) {
        return nil
    } else {
        return [
            "x" : p1!["x"]! + p2!["x"]!,
            "y" : p1!["y"]! + p2!["y"]!
        ]
    }
}

func subtract(p1: [String : Int]?, p2: [String : Int]?) -> [String : Int]? {
    if (p1?["x"] == nil || p2?["x"] == nil || p1?["y"] == nil || p2?["y"] == nil) {
        return nil
    } else {
        return [
            "x" : p1!["x"]! - p2!["x"]!,
            "y" : p1!["y"]! - p2!["y"]!
        ]
    }
}

//Double functions
func add(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    if (p1?["x"] == nil || p2?["x"] == nil || p1?["y"] == nil || p2?["y"] == nil) {
        return nil
    } else {
        return [
            "x" : p1!["x"]! + p2!["x"]!,
            "y" : p1!["y"]! + p2!["y"]!
        ]
    }
}


func subtract(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    if (p1?["x"] == nil || p2?["x"] == nil || p1?["y"] == nil || p2?["y"] == nil) {
        return nil
    } else {
        return [
            "x" : p1!["x"]! - p2!["x"]!,
            "y" : p1!["y"]! - p2!["y"]!
        ]
    }
}

