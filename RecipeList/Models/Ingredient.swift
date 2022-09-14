//
//  Ingredient.swift
//  RecipeList
//
//  Created by Alen Mujkic on 14.09.22.
//

import Foundation

class Ingredient : Identifiable, Decodable {
    var id : UUID?
    var name : String
    var num : Int?
    var denom : Int?
    var unit : String?
    
}
