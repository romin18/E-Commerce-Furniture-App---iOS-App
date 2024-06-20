//
//  CartView.swift
//  E-commerce App
//
//  Created by student on 03/06/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id: \.id){product in
                    
                    CartProductView(product: product)
                }
                HStack{
                    Text("Your total is ")
                    Spacer()
                    Text("$ \(cartManager.total).00")
                        .bold()
                    
                    
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            }
            else{
                
                Text("Your cart is Empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider{
    static var previews: some View{
        CartView()
            .environmentObject(CartManager())
    }
}
