//
//  RecipeDetailView.swift
//  RecipeList
//
//  Created by Alen Mujkic on 11.09.22.
//

import SwiftUI

struct RecipeDetailView: View {
    @State var recipe : Recipe
    var body: some View {
        Text(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static let recipes : [Recipe] = DataService.getJson(nameOfDataFile: "recipes") ?? []
    static var previews: some View {
        
        RecipeDetailView(recipe: self.recipes.first!)
    }
}
