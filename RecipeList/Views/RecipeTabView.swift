//
//  MainView.swift
//  RecipeList
//
//  Created by Alen Mujkic on 13.09.22.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            RecipeFeaturedView()
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("All Recipes")
                    }
                }
        }
        .environmentObject(RecipeViewModel())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
