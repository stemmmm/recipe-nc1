//
//  RecipesViewModel.swift
//  FoodRecipe
//
//  Created by 정호윤 on 2022/05/04.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.sampleData
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
