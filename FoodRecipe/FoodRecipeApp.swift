//
//  FoodRecipeApp.swift
//  FoodRecipe
//
//  Created by 정호윤 on 2022/05/04.
//

import SwiftUI

@main
struct FoodRecipeApp: App {
    @StateObject var recipeViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipeViewModel)
        }
    }
}
