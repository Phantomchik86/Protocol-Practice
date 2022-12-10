//
//  PlayerClass.swift
//  Homework 3 @Phantomchik86
//
//  Created by Oleg Goncharenko on 26.11.2022.
//

import Foundation
//Task 1

class Tavern {
    var fighters: [Fightable] = []
    var movers: [Movable] = []
    
    func enterTavern(hero: Hero){
        hero.fight()
        for mover in movers {
            mover.run()
        }
        for fighter in fighters{
            fighter.fight()
        }
    }
}
//-----------------------------------------------------

//Task 2

class Arena {
    var fighter1: LiveAndShooting
    var fighter2: LiveAndShooting
    
    init(fighter1: LiveAndShooting, fighter2: LiveAndShooting) {
        self.fighter1 = fighter1
        self.fighter2 = fighter2
    }
    
    func startFight() {
        while (fighter1.isAlive() && fighter2.isAlive()) {
            print(fighter1.isAlive())
           print(fighter2.isAlive())
            if (fighter2.protection > 0) {
                fighter2.protection = fighter2.protection - fighter1.fight()
                print("Left protection: \(fighter2.protection)")
            } else {
                fighter2.heals = fighter2.heals - fighter1.fight()
                print("Left lives: \(fighter2.heals)")
            }
            if (fighter1.protection > 0) {
                fighter1.protection = fighter1.protection - fighter2.fight()
                print("Left protection: \(fighter1.protection)")
            } else {
                fighter1.heals = fighter1.heals - fighter2.fight()
                print("Left lives: \(fighter1.heals)")
            }
        }
    }
}
//------------------------------------------------------------

// Task 6.2

class Node<Value>{
    
    var value: Value
    var next: Node?
    
    init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
    
}
