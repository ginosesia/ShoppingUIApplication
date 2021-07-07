//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Gino Sesia on 06/07/2021.
//

import SwiftUI

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
