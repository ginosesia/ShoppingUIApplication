//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Gino Sesia on 06/07/2021.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView().previewDevice("iPhone 12 mini")
            .background(Color.gray)
    }
}
