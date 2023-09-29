//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Anshaj Vats on 8/18/23.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders:OrderModel
    @Environment(\.verticalSizeClass) var vSizeclass:UserInterfaceSizeClass?
    var body: some View {
        VStack {
            if (vSizeclass ?? .regular) != .compact {
                ZStack(alignment: .bottomTrailing) {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                    //                .foregroundColor(Color("Sky"))
                        .foregroundStyle(.regularMaterial)
                        .fontWeight(.semibold)
                }
            }else{
                HStack(alignment: .bottom){
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundColor(Color("Surf"))
                        .fontWeight(.heavy)
                    
                }
            }
        }
        .background(.ultraThinMaterial)
    }
}
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView().environmentObject(OrderModel())
    }
}
