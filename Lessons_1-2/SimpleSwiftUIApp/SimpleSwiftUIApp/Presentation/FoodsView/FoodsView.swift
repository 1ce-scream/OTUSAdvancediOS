//
//  FoodsView.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import SwiftUI

struct FoodsView: View {
    @ObservedObject private var viewModel: FoodsViewModel
    @State private var isShownFavouriteFood: Bool = false
    @State private var shouldShowFoodDetails: Bool = false
    
    init(
        _ viewModel: FoodsViewModel
    ) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Toggle(isOn: $isShownFavouriteFood) {
                        Text("Show only favourites")
                    }
                }
                
                Section {
                    ForEach(viewModel.foods) { food in
                        if !isShownFavouriteFood || food.isFavourite {
                            foodRowView(food)
                        }
                    }
                }
            }
            .animation(.easeOut, value: isShownFavouriteFood)
            .onAppear {
                viewModel.clearSelectedFood()
            }
            .navigationTitle(MainTabbarTabs.foodListView.localized())
            .navigationDestination(isPresented: $shouldShowFoodDetails) {
                FoodsRouter.destinationFoodDetails(
                    viewModel.selectedFood ?? .fakeData()
                )
            }
        }
    }
}

private extension FoodsView {
    private func foodRowView(_ food: FoodModel) -> some View {
        Button {
            viewModel.setSelectedFood(food)
            shouldShowFoodDetails.toggle()
        } label: {
            HStack {
                Text(food.name)
                Spacer()
                Text(food.image)
                    .font(.title3)
            }
            .padding(.horizontal, AppConstants.horizontalPadding)
            .padding(.vertical, AppConstants.verticalPadding)
        }
    }
}

struct FoodsView_Previews: PreviewProvider {
    static let viewModel: FoodsViewModel = .init()
    static var previews: some View {
        FoodsView(viewModel)
    }
}
