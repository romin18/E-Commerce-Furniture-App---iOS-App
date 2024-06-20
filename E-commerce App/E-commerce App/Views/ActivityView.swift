//
//  ActivityView.swift
//  E-commerce App
//
//  Created by student on 14/06/24.
//

import SwiftUI

//struct ActivityView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    ActivityView()
//}

struct ActivityView: View {
    var body: some View {
        ZStack{
            Color ("background")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text ("Activity")
                    .font(.system(size: 24, weight: .bold))
                
                NotificationView()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading){
                        Text("New (70)")
                            .font(.system(size: 20, weight: .bold))
                            .padding(.top)
                        
                        ViewButton(image: "image1", userName: "Leather Couch")
                        
                        ViewButton(image: "image6", userName: "Green Couch")
                        
                        ViewButton(image: "image4", userName: "Beautiful Couch")
                        
                        ViewButton(image: "image3", userName: "Gray Couch")
                        
                        ViewButton(image: "image2", userName: "Nice Couch")
                        
                        ViewButton(image: "image5", userName: "Outdoor Couch")
                        
                        ViewButton(image: "image6", userName: "Green Couch")
                        
                        ViewButton(image: "image1", userName: "Leather Couch")
                        
                        ViewButton(image: "image2", userName: "Nice Couch")
                        
                        Spacer(minLength: 70)
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
