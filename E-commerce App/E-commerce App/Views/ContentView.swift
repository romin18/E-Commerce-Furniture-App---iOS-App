//
//  ContentView.swift
//  E-commerce App
//
//  Created by student on 01/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var cartManager = CartManager()
    // Use for redirect app to home page everytime when opening
    @State var currentTab: Tab = .Home
    //------//
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    //now creating animation using Namespace
    @Namespace var animation
    
    var body: some View {
        TabView(selection: $currentTab){
            
            HomePageView()
                .environmentObject(cartManager)
            
            Text ("Search View")
                .frame (maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Search)
            
            Text ("Notification View")
                .frame (maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Notification)

            
            Text ("Cart View")
                .frame (maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Cart)
            
            Text ("Profile View")
                .frame (maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag (Tab.Profile)
            
        }
        .overlay(
            HStack(spacing: 0){
                ForEach(Tab.allCases, id: \.rawValue){ tab in
                    TabButton(tab: tab)
                }
                .padding(.vertical)
                .padding(.bottom, getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 8))
                .background(Color("kSecondary"))
            }
            ,
            alignment: .bottom
        ).ignoresSafeArea(.all, edges: .bottom)

    }
    
    //Bottom button code
    func TabButton(tab: Tab) -> some View {
        GeometryReader { proxy in
            Button(action: {
                withAnimation(.spring()){
                    currentTab = tab
                }
            },label: {
                VStack(spacing: 0){
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill": tab.rawValue)
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .frame(maxWidth: .infinity)
                        .background(
                            ZStack{
                                if currentTab == tab {
                                    MaterialEffect(style: .light)
                                        .clipShape(Circle())
                                        .matchedGeometryEffect(id: "Tab", in: animation)
                                    
                                    Text(tab.Tabname)
                                        .foregroundColor(.primary)
                                        .font(.footnote)
                                        .padding(.top, 50)
                                }
                            }
                        ).contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -10 : 0)
                }
            })
        }
        .frame(height: 25)
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
            .environmentObject(CartManager())
    }
}

enum Tab: String, CaseIterable{
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Notification = "bell"
    case Cart = "bag"
    case Profile = "person"
    
    var Tabname: String {
        switch self{
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Notification:
            return "Notification"
        case .Cart:
            return "Cart"
        case .Profile:
            return "Profile"
        }
    }
}

extension View {
    func getSafeArea() -> UIEdgeInsets {
        
        guard let screen = UIApplication.shared.connectedScenes.first as?
                UIWindowScene else {
            return .zero
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        
        return safeArea
    }
}

struct MaterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView{
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}

