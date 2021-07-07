//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Gino Sesia on 06/07/2021.
//

import SwiftUI

struct BrandGridView: View {
    
    //MARK: - PROPERTIES
    
    //MARK: - BOY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }//: FOREACH
            })//: LAZYHGRID
            .frame(height:200)
            .padding(15)
        })
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView().previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
