//
//  HomePageView.swift
//  E-commerce App
//
//  Created by student on 03/06/24.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    AppBar()
                    
//                    whSearchView()
                    
                    ImageSliderView()
                    
                    HStack{
                        Text("New Rivels")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            ProductsView()
                        }, label: {
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(Color("kPrimary"))
                        })
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(productList, id: \.id){product in
                                NavigationLink{
                                    ProductDetailsView(product: product)
                                } label: {
                                    ProductCartView(product: product)
                                        .environmentObject(cartManager )
                                }
                            }
                        }
                        
                        .padding(.horizontal)
                        
                    }
                }
            }
        }
        .environmentObject(cartManager)
    }
}

struct HomePageView_Previews: PreviewProvider{
    static var previews: some View{
        HomePageView()
            .environmentObject(CartManager())
    }
}


struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                    Text("Gujarat, India")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: CartView()
                        .environmentObject(cartManager)
                    ){
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }
                Text("Find The Most \nLuxurious")
                    .font(.largeTitle . bold())
                
                + Text(" Furniture")
                    .font(.largeTitle .bold())
                    .foregroundColor(Color("kPrimary"))
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}
