//
//  Protocol.swift
//  Homework 3 @Phantomchik86
//
//  Created by Oleg Goncharenko on 26.11.2022.
//

import Foundation
//Task 1
protocol Movable{
    func run()
}
protocol Fightable {
    func fight()
}
protocol Hero: Movable, Fightable{
    var name: String { get set}
}


// --------------------------------------------------

// Task 2

protocol Live {
    var name: String {get set}
     var heals: Float {get  set}
    var protection: Float {get set}
    func isAlive() -> Bool
}
protocol Shooting {
    var speed : Float {get}
    func shoot() -> Float?
}
protocol Fighting: Shooting, Live {
    var weaponName: String {get set}
   
    func fight() -> Float
}
protocol LiveAndShooting: Fighting{
    func move()
}
// --------------------------------------------------

