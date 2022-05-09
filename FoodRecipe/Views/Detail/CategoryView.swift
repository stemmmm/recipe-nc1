//
//  CategoryView.swift
//  FoodRecipe
//
//  Created by 정호윤 on 2022/05/04.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipe: RecipesViewModel
    var category: Category
    
    var recipes: [Recipe] {
        recipe.recipes.filter { $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.side)
            .environmentObject(RecipesViewModel())
    }
}
