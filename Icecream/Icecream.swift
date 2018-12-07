//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String : String] = [
    "Joe": "Peanut Butter and Chocolate",
    "Tim": "Natural Vanilla",
    "Sophie": "Mexican Chocolate",
    "Deniz": "Natural Vanilla",
    "Tom": "Mexican Chocolate",
    "Jim": "Natural Vanilla",
    "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names : [String] = []
        for (name, favFlavor) in favoriteFlavorsOfIceCream {
            if flavor == favFlavor {
                names.append(name)
            }
        }
        return names
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var count: Int = 0
        for (_, favFlavor) in favoriteFlavorsOfIceCream {
            if flavor == favFlavor {
                count += 1
            }
        }
        return count
    }
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        for (name, favFlavor) in favoriteFlavorsOfIceCream {
            if person == name {
                return favFlavor
            }
        }
        return nil
    }
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        for (name, _) in favoriteFlavorsOfIceCream {
            if forPerson == name {
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
                return true
            }
        }
        return false
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        for (name, _) in favoriteFlavorsOfIceCream {
            if person == name {
                favoriteFlavorsOfIceCream.removeValue(forKey: person)
                return true
            }
        }
        return false
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        for (name, _) in favoriteFlavorsOfIceCream {
            if person == name {
                return false
            } else {
                favoriteFlavorsOfIceCream[person] = withFlavor
                return true
            }
        }
        return true
    }
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        let allNames = favoriteFlavorsOfIceCream.sorted(by: <)
        var list: String = ""
        for (name, flavor) in allNames {
            list.append("\(name) likes \(flavor)\n")
        }
        list.removeLast()
        return list
    }
    
    
    
    
    
    
    

}
