//
//  OrderView.swift
//  HuliPizza
//
//  Created by Anshaj Vats on 8/18/23.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var order:OrderModel
    var body: some View {
        VStack {
            ZStack(alignment: .top){
                ScrollView{
                    ForEach($order.orderItems){ order in
                        OrderRowView(order: order)
//                        Text(order.item.name)
                            .padding(4)
                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                            .padding([.bottom, .trailing], 8)
                            .padding([.leading, .trailing], 8)
                        
                    }
                }
                .padding(.top, 70)
                
                
                HStack {
                    Text("Order Pizza")
                        .font(.title)
                    Spacer()
                    
                }
                .padding()
                .background(.ultraThinMaterial)
                
            }
            .padding()
            Button("Delet Order"){
                if !order.orderItems.isEmpty{
                    order.removeLast()
                }
            }
            .padding(5)
            .background(.regularMaterial, in: Capsule())
        }
        .background(Color("Surf"))
        }
    }

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(order: OrderModel())
    }
}
