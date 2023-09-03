//
//  AboutDetailsView.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import SwiftUI

struct AboutDetailsView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            Text("About authors detail")
                .font(.title)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        dismissButton
                    }
                }
        }
    }
}

private extension AboutDetailsView {
    private var dismissButton: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark.circle")
                .font(.headline)
                .foregroundColor(.black)
        }
    }
}

struct AboutDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutDetailsView()
    }
}
