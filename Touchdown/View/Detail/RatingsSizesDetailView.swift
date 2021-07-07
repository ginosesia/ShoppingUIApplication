//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Gino Sesia on 06/07/2021.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    //MARK: - PROPERTIES
    let sizes: [String] = ["XS", "S", "M","L","XL"]
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })//: BUTTON
                    }//: FOREACH
                })//: HSTACK
            })//: VSTACK
            Spacer()
            
            // SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5)
                                                .stroke(colorGray,lineWidth: 2)
                                )
                        })//: BUTTON
                    }//: FOREACH
                })//: HSTACK
            })//: VSTACK
        })//: HSTACK
    }
}
//MARK: - PREVIEW
struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView().previewLayout(.sizeThatFits)
            .padding()
    }
}
