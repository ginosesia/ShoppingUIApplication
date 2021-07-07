//
//  Constant.swift
//  Touchdown
//
//  Created by Gino Sesia on 06/07/2021.
//

import SwiftUI

//DATA
let players: [Player]  = Bundle.main.decode("player.json")
let categories: [Category]  = Bundle.main.decode("category.json")
let products: [Product]  = Bundle.main.decode("product.json")
let brands: [Brand]  = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]


//COLORS
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)


//LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//UX
let feedback = UIImpactFeedbackGenerator(style: .light)

//API

//FONT

//STRING

//MISC

