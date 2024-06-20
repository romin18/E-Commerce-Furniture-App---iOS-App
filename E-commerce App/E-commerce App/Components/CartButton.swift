//
//  CartButton.swift
//  E-commerce App
//
//  Created by student on 03/06/24.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "bag.fill")
                .foregroundColor(.black)
                .padding(5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15,height: 15)
                    .background(.green)
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButtonView_Previews: PreviewProvider{
    static var previews: some View{
        CartButton(numberOfProducts: 1)
    }
}

