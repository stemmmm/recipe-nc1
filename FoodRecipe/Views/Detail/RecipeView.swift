//
//  RecipeView.swift
//  FoodRecipe
//
//  Created by 정호윤 on 2022/05/04.
//

import SwiftUI

struct RecipeView: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    var recipe: Recipe
    
    var recipeIndex: Int {
        recipeVM.recipes.firstIndex(where: { $0.id == recipe.id })!
    }
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                HStack {
                    Text(recipe.name)
                        .bold()
                        .multilineTextAlignment(.center)
                        .font(.title)
                    FavoriteButton(isSet: $recipeVM.recipes[recipeIndex].isFavorite)
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 30) {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    }
                    
                    if !recipe.ingredients.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Ingredients")
                                .font(.headline)
                            Text(recipe.ingredients)
                        }
                    }
                    
                    if !recipe.description.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Directions")
                                .font(.headline)
                            Text(recipe.directions)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.sampleData[1])
            .environmentObject(RecipesViewModel())
    }
}
