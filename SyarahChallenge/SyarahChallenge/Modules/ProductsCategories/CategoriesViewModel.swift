//
//  CategoriesViewModel.swift
//  SyarahChallenge
//
//  Created by Linda adel on 23/03/2024.
//

import Foundation
import Combine

class CategoriesViewModel: ObservableObject {
    @Inject var categoriesRepository: CategoriesRepositoryDataSource
    @Published var categories: [String] = []
    private var cancellables = Set<AnyCancellable>()
    
    func loadCategories() {
        categoriesRepository.getCategories()
            .sink(receiveCompletion: { completion in
                if case let .failure(error) = completion {
                    // Handle error
                    print("error-\(error)")
                }
            }, receiveValue: { [weak self] categories in
                // Process categories
                self?.categories = categories
            })
            .store(in: &cancellables)
    }
}
