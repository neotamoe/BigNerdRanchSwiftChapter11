//: Playground - noun: a place where people can play

import UIKit

// SETS
// set is an unordered collection of distinct instances
// set stores unordered unique elements
// (compared to array which is ordered and not unique storage for elements or a dictionary which is not ordered, requires unique keys and stores key-value pairs

// creating a set
var groceryBag = Set<String>()

// adding to a set
groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineapple")

// looping through a set
for food in groceryBag {
    print(food)
}

// refactoring of creating a bag
var shoppingBag = Set(["Apples", "Oranges", "Pineapple"])
for food in shoppingBag {
    print(food)
}

// contains(_:) method
let hasBananas = groceryBag.contains("Bananas")

// combining sets - union method
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)
// the union method joins two sets together and returns a new Set instance that includes unique elements of both collections

// intersecting sets - identifies elements present in both Sets and returns duplicate items in a new Set
let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)

// detecting intersections in sets - isDisjoint method returns true or false (true if the two sets are non-overlapping and false if there are any elements that are in both sets)
let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes","Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)

// BRONZE CHALLENGE
// consider the following code that models the cities 2 people have visited
// find a method that returns a bool indicating whether myCities contains all the cities in yourCities
let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])
let superscript = myCities.isSuperset(of: yourCities)
// isSuperset(of:) method checks to see if the first Set contains everything in the second Set

// SILVER CHALLENGE
// instead of creating a new set using union and intersection methods, review Documentation to find what you could do to modify the existing instance in place?
// rework union method above; use formUnion
groceryBag.formUnion(friendsGroceryBag)

// rework intersection method example above; use formIntersection
groceryBag.formIntersection(roommatesGroceryBag)


