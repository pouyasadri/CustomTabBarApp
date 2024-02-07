//
//  HomeView.swift
//  CustomTabBarApp
//
//  Created by Pouya Sadri on 07/02/2024.
//

import SwiftUI

struct HomeView: View {
	@State private var activeTab : Tab = .home
	@Namespace private var animation
	
	
    var body: some View {
		VStack{
			tabView
			CustomTabBar(animation: animation, activeTab: $activeTab)
		}
    }
	private var tabView : some View{
		TabView(selection: $activeTab){
			ForEach(Tab.allCases,id: \.self){ tab in
				tabViewContent(for: tab)
					.tag(tab)
			}
		}
	}
	@ViewBuilder
	private func tabViewContent(for tab: Tab) -> some View{
		switch tab {
			case .home:
				Text("Home")
			case .services:
				Text("Services")
			case .partners:
				Text("Partners")
			case .activity:
				Text("Activity")
		}
	}
}

#Preview {
    HomeView()
}

//MARK: - Custom tab bar
struct CustomTabBar : View {
	let animation : Namespace.ID
	@Binding var activeTab : Tab
	var body: some View {
		HStack(alignment: .bottom,spacing:0){
			ForEach(Tab.allCases,id:\.self){item in
				TabItem(tint: item.color, inactiveTint: .secondary, tab: item, animation: animation, activeTab: $activeTab)
			}
		}
		.padding(.horizontal,15)
		.padding(.vertical,10)
		.animation(.interactiveSpring(response: 0.6,dampingFraction: 0.6,blendDuration: 0.7), value: activeTab)
		.background(
			Rectangle()
				.fill(.white)
				.ignoresSafeArea()
				.shadow(color: activeTab.color.opacity(0.2), radius: 5,x: 0 , y: -5)
				.padding(.top,25)
		)
	}
}
