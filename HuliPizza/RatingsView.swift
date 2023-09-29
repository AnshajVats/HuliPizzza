//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Anshaj Vats on 8/18/23.
//

import SwiftUI

struct RatingView: View {
    var rating:Int
    var body: some View {
        HStack{
            ForEach(1...6, id: \.self){ circle in
                Image(systemName: (circle <= rating) ? "fork.knife.circle.fill" : "circle")
                
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 2)
    }
}
