//
//  NotificationView.swift
//  E-commerce App
//
//  Created by student on 14/06/24.
//

import SwiftUI

struct NotificationView: View {
    let items = ["All Activity", "Likes", "Comments" ]
    @State var selectedIndex = 0
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(0 ..< items.count){ i in
                    Button(action: {
                        selectedIndex = i
                    }, label: {
                        ZStack(alignment: . top){
                            VStack{
                                Spacer ()
                                Text (items[i])
                                    .font(.system(size: 17, weight:.medium))
                                    .frame(width: 120, height: 50)
                                    .background (selectedIndex == i ? Color.black : Color.white)
                                    .foregroundColor (selectedIndex == i ? .white : .black)
                                    .clipShape (Capsule())
                            }
                            if i == 1 || i == 2 {
                                RoundedRectangle(cornerRadius: 12)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor (Color(#colorLiteral(red: 0.9311559796, green: 0.008160683326, blue: 0.3113113642, alpha: 1)))
                                    .shadow(color: Color(#colorLiteral(red: 0.9987388253, green: 0.009666659869, blue: 0.3012677729, alpha: 1)), radius: 10, x: 0.0, y: 7.0)
                                    .overlay(
                                        Text(i == 1 ? "30" : "20")
                                            .font(.system(size: 15, weight: .medium))
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .frame(width: 120, height: 75)
                    })
                }
            }
            .padding(.leading)
        }
    }
}

struct NotificationView_Previews: PreviewProvider{
    static var previews: some View{
        NotificationView()
    }
}
