//
//  generic.swift
//  Homework 3 @Phantomchik86
//
//  Created by Oleg Goncharenko on 03.12.2022.
//

import Foundation
// Task 5
//5.1
 func changes<T>( param1: inout T, param2: inout T)  {
     let temp1 = param1
     param1 = param2
     param2 = temp1
}
//5.2
func tuple<T>(param1: T, param2: T) -> (T,T){
    (param1,param2)
}
//5.3
func plus<T: Numeric>(param1: T, param2: T) -> T {
    param1+param2
}
