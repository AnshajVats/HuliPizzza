//
//  StatusBarView.swift
//  HuliPizza
//
//  Created by Anshaj Vats on 9/28/23.
//

import SwiftUI

struct StatusBarView: View {
    @EnvironmentObject var orders:OrderModel
    @Binding var showOrders: Bool
    var body: some View {
        HStack {
            Text("\(orders.orderItems.count) orders")
            Spacer()
            Button(){
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
                
            }
            Spacer()
            Label{
                Text(orders.orderTotal, format: .currency(code: "USD"))
            }icon:{
                Image(systemName: orders.orderItems.isEmpty ? "cart": "cart.circle.fill")
            }
        }
        
        .foregroundStyle(.white)
        .font(.title2)
    }
}

struct StatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarView(showOrders: .constant(false) ).environmentObject(OrderModel())
    }
}
