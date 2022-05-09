//
//  ContentView.swift
//  FoodRecipe
//
//  Created by 정호윤 on 2022/05/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
