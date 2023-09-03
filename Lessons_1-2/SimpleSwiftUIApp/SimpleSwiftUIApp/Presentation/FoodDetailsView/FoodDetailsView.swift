//
//  FoodDetailsView.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import SwiftUI

struct FoodDetailsView: View {
    private let food: FoodModel
    
    init(
        _ food: FoodModel
    ) {
        self.food = food
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Name: ")
                Spacer()
                Text(food.name)
            }
            HStack {
                Text("Image: ")
                Spacer()
                Text(food.image)
            }
            HStack {
                Text("Is favourite")
                Spacer()
                Image(systemName: food.isFavourite ? "checkmark" : "xmark")
                    .foregroundColor(food.isFavourite ? .green : .red)
            }
        }
        .padding(.horizontal, AppConstants.horizontalPadding)
        .navigationTitle("Details")
    }
}

struct FoodDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailsView(.sample(name: "Test", image: "🍐"))
    }
}
