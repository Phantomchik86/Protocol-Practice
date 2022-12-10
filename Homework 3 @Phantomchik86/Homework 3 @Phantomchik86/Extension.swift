//
//  Exeption.swift
//  Homework 3 @Phantomchik86
//
//  Created by Oleg Goncharenko on 27.11.2022.
//

import Foundation

//Task 4
extension Fighting {
    func fight() -> Float{
        print("\(name) mist")
        return 0.0
    }
}
extension Live {
    
    func isAlive() -> Bool
    {
        if heals + protection > 0 {
            print("\(name) alive")
            return true
        } else {
            print("\(name) not alive")
            print("Game over")
            return false
        }
    }
}
extension StormTrooper: LiveAndShooting {
   
    
    func shoot () -> Float?{
        if self.speed == 0 {
            print("Can't shoot")
            return nil
        } else {
            return self.power / self.speed
        }
    }
}

extension Bomber: LiveAndShooting{
    private mutating func move(){
        print("\(self.name) move to the Fight")
        self.speed += 1
    }
    
}
extension Shooting{
    func shoot () -> Float?{
        if self.speed == 0 {
            print("Can't shoot")
            return nil
        } else {
            return self.speed
        }
    }
}
extension LiveAndShooting{
    func move(){
        print("\(self.name) move to the Fight")
    }
}
//--------------------------------------------------
// Task 3
extension Int {
    func stepen (degree: Int) -> Int {
        var temp : Int = 1
        for _ in 1...degree {
            temp *= degree
        }
        return temp
    }
}

extension String {
    func isPalindrome() -> Bool{
        var newString = ""
        if self.isEmpty {
            return false
        } else {
            for character in self {
                newString.insert(character, at: newString.startIndex)
            }
        }
        if newString == self {return true}
        else {return false}
    }
}

//
extension Node: CustomStringConvertible {
    
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}

extension LinkedList: CustomStringConvertible {

  public var description: String {
    guard let head = head else {
      return "Empty list"
    }
    return String(describing: head)
  }
}
