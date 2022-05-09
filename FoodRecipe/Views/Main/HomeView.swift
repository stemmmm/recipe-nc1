//
//  HomeView.swift
//  FoodRecipe
//
//  Created by 정호윤 on 2022/05/04.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipe: RecipesViewModel
    @State private var isAddingRecipe = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipe.recipes)
            }
            .navigationTitle("레시피")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isAddingRecipe = true
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
            .sheet(isPresented: $isAddingRecipe) {
                AddRecipeView()
            }
            .onAppear()
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
