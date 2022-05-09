//
//  AddRecipeView.swift
//  FoodRecipe
//
//  Created by 정호윤 on 2022/05/04.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipe: RecipesViewModel
    
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Recipe Name", text: $name)
                } header: {
                    Text("Name")
                }
                
                Section {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue).tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                } header: {
                    Text("Category")
                }
                
                Section {
                    TextEditor(text: $description)
                } header: {
                    Text("Description")
                }
                
                Section {
                    TextEditor(text: $ingredients)
                } header: {
                    Text("Ingredients")
                }
                
                Section {
                    TextEditor(text: $directions)
                } header: {
                    Text("Directions")
                }
            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("취소") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: recipe.recipes.sorted { $0.dataPublished > $1.dataPublished }[0])
                            .navigationBarHidden(true)
                    } label: {
                        Button("완료") {
                            saveRecipe()
                            navigateToRecipe = true
                        }
                    }
                    .disabled(name.isEmpty)
                }
            }
            .navigationTitle("레시피 추가")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let datePublished = dateFormatter.string(from: now)
        
        let newRecipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: selectedCategory.rawValue, dataPublished: datePublished, url: "", isFavorite: false)
        
        recipe.addRecipe(recipe: newRecipe)
    }
}
