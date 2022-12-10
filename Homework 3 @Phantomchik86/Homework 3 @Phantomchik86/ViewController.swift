//
//  ViewController.swift
//  Homework 3 @Phantomchik86
//
//  Created by Oleg Goncharenko on 26.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Task 1:
        
        let oleg = Farmer()
        let Nastya = Tractor()
        let Serg = Butcher()
        let Anton = Box()
        let Super = SuperMan()
        let BatMan = Batman()
        let HromayaLoshad = Tavern()
        
        HromayaLoshad.movers = [oleg,Nastya]
        HromayaLoshad.fighters = [Serg,Anton]
        HromayaLoshad.enterTavern(hero: BatMan)
        HromayaLoshad.enterTavern(hero: Super)
        
        //----------------------------------------------------------
        
        // Task 2
        
        let fight1 = StormTrooper(speed: 10.0, name: "Asasin", power: 20.0, weaponName: "M-16", heals: 100.0, protection: 25.0)
        let fight2 = Bomber(speed: 8.0, name: "Bam", power: 30.0, weaponName: "Bazuka", heals: 120.0, protection: 15.0)
        
        
        let arena = Arena(fighter1: fight1, fighter2: fight2)
        arena.startFight()
        
        //-----------------------------------------------------------
        
        // Task 3
        
        print(3.stepen(degree: 5))
        print(4.stepen(degree: 5))
        print(2.stepen(degree: 11))
        
        print("Metro".isPalindrome())
        print("дед".isPalindrome())
        print("доход".isPalindrome())
        
        //-----------------------------------------------------------
        
        // Task 5
        //5.1
        var a = "Oleg"
        var b = "Anton"
        changes(param1: &a, param2: &b)
        print(a," ",b)
        
        //5.2
        print(tuple(param1: a, param2: b))
        
        //5.3
        print(plus(param1: 3.44, param2: 21))
        
        //5.4
        var someDictionary = Dict<Int,String>()
        someDictionary.addElement(key: 1, value: "One")
        someDictionary.addElement(key: 2, value: "Two")
        print(someDictionary.myDictionary)
        print(someDictionary.getElement(key: 2)!)
        
        //-----------------------------------------------------------
        
        // Task 6
        //6.1
        var stringStack = Stack<String>(lengh: 10)
        stringStack.push(element: "stroca1")
        stringStack.push(element: "kskdsdsd")
        stringStack.push(element: "dvvdss")
        print(stringStack.peek() ?? -1)
        print(stringStack.pop() ?? -1)
        print(stringStack.array)
        
        var doubleStack = Stack<Double>(lengh: 10)
        doubleStack.push(element: 23.1)
        doubleStack.push(element: 1.5)
        doubleStack.push(element: 12.6)
        print(doubleStack.peek() ?? -1)
        print(doubleStack.pop() ?? -1)
        print(doubleStack.array)
        
        //6.2
        
        var linkList = LinkedList<Int>()
        linkList.push(3)
        linkList.push(2)
        linkList.push(1)
        print(linkList)
        linkList.append(2)
        print(linkList)
        let pop = linkList.pop()
        print("Delete\(String(describing: pop))")
        print(linkList)
    }
}
