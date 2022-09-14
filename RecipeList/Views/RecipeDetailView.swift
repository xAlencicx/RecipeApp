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
        ScrollView{
            VStack(alignment:.leading){
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                VStack(alignment:.leading) {
                    
                    Text("Ingredients")
                        .font(.headline)
                    ForEach(recipe.ingredients){ ingredient in
                        Text("• \(ingredient.name)")
                            .padding([.top,.horizontal],2)
                    }
                    
                }
                .padding()
                
                Divider()
                
                VStack(alignment:.leading) {
                    
                    Text("Directions")
                        .font(.headline)
                    ForEach(recipe.directions,id:\.self){ direction in
                        Text("\(recipe.directions.index(of: direction)!+1). \(direction)")
                            .padding([.top,.horizontal],2)
                    }
                    
                }
                .padding()
                
            }
            .clipped()
            
        }
        .navigationTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static let recipes : [Recipe] = DataService.getJson(nameOfDataFile: "recipes") ?? []
    static var previews: some View {
        
        RecipeDetailView(recipe: self.recipes.first!)
    }
}
