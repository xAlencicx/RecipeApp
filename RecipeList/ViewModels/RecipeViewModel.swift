//
//  RecipeViewModel.swift
//  RecipeList
//
//  Created by Alen Mujkic on 11.09.22.
//

import Foundation


class RecipeViewModel : ObservableObject {
    @Published var recipes : [Recipe] = []
  
    init(){
        if let recipes : [Recipe] = DataService.getJson(nameOfDataFile: "recipes"){
            
            self.recipes = recipes.map({ recipe in
                recipe.id = UUID()
                
                for index in 0..<recipe.ingredients.count {
                    recipe.ingredients[index].id = UUID()
                }
                
                return recipe
            })
        }
    }
}
