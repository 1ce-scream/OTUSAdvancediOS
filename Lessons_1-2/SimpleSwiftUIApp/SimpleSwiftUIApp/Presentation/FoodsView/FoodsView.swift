//
//  FoodsView.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import SwiftUI

struct FoodsView: View {
    @ObservedObject private var viewModel: FoodsViewModel
    
    init(
        _ viewModel: FoodsViewModel
    ) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.foods) { food in
                    HStack {
                        Text(food.name)
                        Spacer()
                        Text(food.image)
                            .font(.title3)
                    }
                    .padding()
                }
            }
            .navigationTitle(MainTabbarTabs.foodListView.localized())
        }
    }
}

struct FoodsView_Previews: PreviewProvider {
    static let viewModel: FoodsViewModel = .init()
    static var previews: some View {
        FoodsView(viewModel)
    }
}
