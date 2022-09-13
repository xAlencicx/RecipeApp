//
//  Recipe.swift
//  RecipeList
//
//  Created by Alen Mujkic on 11.09.22.
//

import Foundation

class Recipe : Identifiable, Decodable {
    var id : UUID?
    var name : String
    var featured : Bool
    var image : String
    var description : String
    var prepTime : String
    var cookTime : String
    var totalTime : String
    var servings : Int
    var highlights : [String]?
    var ingredients : [String]
    var directions : [String]
    
}
