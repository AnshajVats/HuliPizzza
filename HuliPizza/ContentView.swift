//
//  ContentView.swift
//  HuliPizza
//
//  Created by Anshaj Vats on 8/18/23.
//

import SwiftUI

struct ContentView: View {
    var menu:[MenuItem]
    @StateObject var orders:OrderModel = OrderModel()
    @State var selectedItem:MenuItem = noMenuItem    
    @State private var showOrders:Bool = false
    var body: some View {
        VStack {
            VStack {
                HeaderView()
                    .shadow(radius: 5)
                    .environment(\.colorScheme, .light)
                StatusBarView(showOrders: $showOrders)
                if showOrders
                {
                    OrderView(order: orders)
                        .background(in: RoundedRectangle(cornerRadius: 8))
                    
                }
                else{
                    MenuItemView(item: $selectedItem, orders: orders)
                        .padding(5)
                        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                 
                    
                    
                    MenuView(menu: menu, selectedItem: $selectedItem)
                }
                Spacer()

                .foregroundStyle(.white)
                .font(.title2)
            }
            .padding()
            .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
            .environmentObject(orders)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: MenuModel().menu)
        
    }
}



