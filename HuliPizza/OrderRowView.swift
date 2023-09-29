//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Anshaj Vats on 8/18/23.
//

import SwiftUI

struct OrderRowView: View {
    @Binding var order:OrderItem
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline){
                Text(order.item.name)
                    .fontWeight(.light)
                Spacer()
            }
            HStack {
                Text(order.quantity, format: .number)
                Text(order.item.price, format: .currency(code: "USD"))
                    .fontWeight(.light)
                Spacer()
                Text(order.extPrice, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: .constant(testOrderItem))
    }
}
