//
//  ViewButton.swift
//  E-commerce App
//
//  Created by student on 14/06/24.
//

import SwiftUI

struct ViewButton: View {
    var image: String
    var userName: String
    
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red:0, green: 0, blue: 0 , alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 26))
                    .padding(6)
                    .background(
                    RoundedRectangle(cornerRadius: 25)
                        .strokeBorder(LinearGradient(gradient: Gradient(colors: [Color(.orange), Color(.systemPink)]), startPoint: .bottom, endPoint: .top), lineWidth: 3)
                        .foregroundColor (Color(#colorLiteral(red: 0.9311559796, green: 0.008160683326, blue: 0.3113113642, alpha: 1)))
                    )
                
            })
            
            VStack(alignment: .leading){
                Text(userName)
                    .font(.system(size: 17, weight: .bold))
                    
                HStack(alignment: .bottom){
                    Text("Designer Furniture")
                        .font(.system(size: 13))
                        .foregroundColor (Color(#colorLiteral(red: 0.6000000238, green:
                    0.6000000238, blue: 0.6000000238, alpha: 1)))
                    
                }
            }
            Spacer()
            
            Button(action: {}, label: {
                Text("View")
                    .padding(8)
                    .font(.system(size: 15, weight: .medium))
                    .frame(width: 115, height: 50)
                    .background(Color(.blue))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            })
        }
        .padding(8)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .padding(.top, 8)
    }
}

struct ViewButton_Previews: PreviewProvider{
    static var previews: some View{
        ViewButton(image: "image1", userName: "Leather Couch")
    }
}
