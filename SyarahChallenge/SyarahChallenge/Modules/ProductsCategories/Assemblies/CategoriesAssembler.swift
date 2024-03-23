//
//  CategoriesAssembler.swift
//  SyarahChallenge
//
//  Created by Linda adel on 23/03/2024.
//

import Foundation

final class CategoriesAssembler: Assembler{
    static var shareInstance: CategoriesAssembler =  CategoriesAssembler()
    private let categoriesRepository: CategoriesRepositoryDataSource
    
    init() {
        self.categoriesRepository = CategoriesRepository(remoteDataSource: CategoriesAPI())
    }
    
    func assemble() {
        let container = DIContainer.shared
        container.register(categoriesRepository)
        
    }
    
    
}
 
