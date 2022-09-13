//
//  ContentView.swift
//  RecipeList
//
//  Created by Alen Mujkic on 11.09.22.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var recipeViewModel = RecipeViewModel()
    
    var body: some View {
        NavigationView {
            List(recipeViewModel.recipes) { recipe in
                NavigationLink(destination: {
                    RecipeDetailView(recipe: recipe)
                }, label: {
                    HStack(spacing: 20.0){
                        Image(recipe.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(recipe.name)
                    }
                })
            .navigationTitle("All Recipes")
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
