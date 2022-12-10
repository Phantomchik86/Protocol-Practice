//
//  Structur.swift
//  Homework 3 @Phantomchik86
//
//  Created by Oleg Goncharenko on 26.11.2022.
//

import Foundation
//Task 1

 struct Farmer: Movable {
     func run() {
         print("Fermer: Run")
     }
 }
 struct Tractor: Movable{
     func run() {
         print("Tructor RUN")
     }
 }
     struct Butcher: Fightable {
         func fight() {
             print("Butcher: Fight")
         }
     }
     struct Box: Fightable{
     func fight(){
         print("Box is Fight")
     }
 }
     struct SuperMan: Hero {
         var name: String = "Cent"

         func run() {
             print("SuperMan: move")
         }

         func fight() {
             print("SuperMan: Fight")
         }
     }
 struct Batman: Hero {
     var name: String = "Batmen"

     func run() {
         print("Batmen move")
     }

     func fight() {
         print("Batmen Fight")
     }
 }
//---------------------------------------------------------------
//Task 2

struct Soldier: LiveAndShooting {

    var weaponName: String
    var heals: Float
    var protection: Float
    var name: String
    var speed : Float

    func move(){
         print("Soldier move to position for shoting!")
        }

//    func isAlive() -> Bool
//    {
//        if heals + protection > 0 {
//            print("\(name) alive")
//            return true
//        } else {
//            print("\(name) not alive")
//            print("Game over")
//            return false
//        }
//    }
    func shoot () -> Float?{
        if self.speed == 0 {
            print("Can't shoot")
            return nil
        } else {
            return self.speed
        }
    }

    func fight() -> Float{
        let damage = 0.0001 * (shoot() ?? 0.0)
        print("Shoot at the enemy, but not atach")
        return damage
    }
}

struct StormTrooper {
    var speed: Float
    var name: String
    let power : Float
    var weaponName: String
    var heals: Float
    var protection: Float
    
    func isAlive() -> Bool
    {
        if self.heals + self.protection > 0 {
            print("\(self.name) alive")
            return true
        } else {
            print("\(self.name) not alive")
            print("Game over")
            return false
        }
    }
    
func fight() -> Float{
        
    let damage  = (self.shoot() ?? 0.0)*Float.random(in: 0.1 ... 5)
    print("\(self.name) atac from \(self.weaponName) and with: \(damage)")
        if damage > 1 {
            return damage
        } else {return self.fight()}
    }
}

struct Bomber {
    var speed: Float
    var name: String
    let power : Float
    var weaponName: String
    var heals: Float
    var protection: Float
    
    func fight() -> Float{
        let damage  = (self.shoot() ?? 0.0)*Float.random(in: 0.1 ... 10)
        print("\(name) atac from \(weaponName) and with: \(damage)")
        if damage > 1 {
            return damage
        } else {return self.fight()}
    }
}
//--------------------------------------------------------------

//Task5
//5.4
struct Dict<T: Hashable,D: Hashable> {
    var myDictionary: [T: D] = [:]
    mutating func addElement(key: T, value: D){
        myDictionary.updateValue(value, forKey: key)
    }
    func getElement(key: T)-> D? {
        myDictionary[key]
    }
}
  
//---------------------------------------------------------------

//Task 6
//6.1
struct Stack<T> {
    var array: [T] = []
   
    
    init (lengh: Int ){
        array.reserveCapacity(lengh)
    }
    
    mutating func push (element: T) { // add element
        array.append(element)
    }
    func isEmpty() -> Bool{ //empty?
        array.isEmpty
    }
    mutating func peek() ->T? {   // get top element, no delete
        if array.isEmpty {
            print("Array IS empty!")
            return nil
        } else {
            return array.last
        }
    }
    mutating func pop() -> T?{ // get element and delete
        array.popLast()
    }
    
}

//6.2

struct LinkedList<Value>{
    
    var head: Node<Value>?
    var tail: Node<Value>?
    var isEmpty: Bool  {
        head == nil
        
    }
    init(){
    }
    
    mutating func push (_ value: Value){ // добавить в начало списка
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
        mutating func append(_ value: Value){ //добавить в конец списка
            guard !isEmpty else{
                push(value)
                return
            }
            tail!.next = Node(value: value)
            tail = tail!.next
        }
    mutating func pop() -> Value? {
      defer {
        head = head?.next
        if isEmpty {
          tail = nil
        }
      }
      return head?.value
    }
}
