//
//  Shop.swift
//  Touchdown
//
//  Created by Gino Sesia on 06/07/2021.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
