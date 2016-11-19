//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = ["Joe":"Peanut Butter and Chocolate", "Tim":"Natural Vanilla", "Sophie":"Mexican Chocolate", "Deniz":"Natural Vanilla", "Tom":"Mexican Chocolate", "Jim":"Natural Vanilla", "Susan":"Cookies 'N' Cream"]
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var name_Array : [String] = []
        
        for (name, favorite) in favoriteFlavorsOfIceCream{
            if favorite == flavor{
                name_Array.append(name)
            }
        }
        
        return name_Array
    }
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var count_names : Int = 0
        
        for (_, favorite) in favoriteFlavorsOfIceCream{
            if favorite == flavor{
                count_names = count_names + 1
            }
        }
        
        return count_names
    }
    
    
    // 4.
   
    func flavor(forPerson persona: String) -> String? {
        var personb : String?
        if let(person) = favoriteFlavorsOfIceCream[persona]{
            personb = person
        }
        return personb
    }
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson:String) -> Bool{
        
        if let(person) = favoriteFlavorsOfIceCream[forPerson]{
            //let person = person
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
            return true
        } else {
            return false
        }
        
    }
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool{
        
        if let(favorite) = favoriteFlavorsOfIceCream[person]{
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        } else {
            return false
        }
    }
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    // 8.
    
    func add(person:String, withFlavor:String) -> Bool {
    
        if let(favorite) = favoriteFlavorsOfIceCream[person]{
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        }
        
    }
    
    
    // 9.
    
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var name_list = ""
        
        for name in allNames{
            var favorite = ""
            if let(favoritea) = favoriteFlavorsOfIceCream[name]{
                favorite = favoritea
            }
            name_list.append("\(name) likes \(favorite)\n")
        }
        return name_list
    }
    

}
