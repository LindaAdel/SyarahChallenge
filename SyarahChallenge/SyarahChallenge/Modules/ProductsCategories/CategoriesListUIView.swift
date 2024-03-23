//
//  CategoriesListUIView.swift
//  SyarahChallenge
//
//  Created by Linda adel on 23/03/2024.
//

import SwiftUI

struct CategoriesListUIView: View {
    @ObservedObject var categoriesViewModel: CategoriesViewModel
    var body: some View {
            VStack(spacing: 20){
                Spacer()
                ForEach(categoriesViewModel.categories, id: \.self) { category in
                    VStack(alignment: .leading, spacing: 20){
                        Button(action: {
                            // Save the object into a global store to be used later on
                            AnalyticsManager.shared.trackEvent(name: "category_clicked", parameters: ["category":category])
                        }) {
                            Text(category)
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding()
                        }
                        
                    }
                }
                Spacer()
        }.onAppear{
            fetchCategories()
        }
        
    }
    
    func fetchCategories() {
        categoriesViewModel.loadCategories()
    }
}

extension CategoriesListUIView {
    
    static func configureView() -> some View {
        CategoriesAssembler.shareInstance.assemble()
        var view = CategoriesListUIView(categoriesViewModel:CategoriesViewModel())
        
        return view
    }
}
