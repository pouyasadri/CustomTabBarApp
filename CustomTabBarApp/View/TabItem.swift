//
//  TabItem.swift
//  CustomTabBarApp
//
//  Created by Pouya Sadri on 07/02/2024.
//

import SwiftUI

struct TabItem: View {
	let tint : Color
	let inactiveTint : Color
	let tab : Tab
	let animation: Namespace.ID
	
	@Binding var activeTab : Tab
	
	
    var body: some View {
		VStack{
			iconView
			textView
		}
		.frame(maxWidth: .infinity)
		.contentShape(Rectangle())
		.onTapGesture {
			withAnimation{
				activeTab = tab
			}
		}
    }
	
	private var iconView : some View{
		Image(systemName: tab.systemImage)
			.font(.title2)
			.foregroundStyle(activeTab == tab ? .white : inactiveTint)
			.frame(width: activeTab == tab ? 58 : 35, height: activeTab == tab ? 58 : 35)
			.background(activeTabBackgroundView)
	}
	@ViewBuilder
	private var activeTabBackgroundView : some View{
		if activeTab == tab {
			Circle()
				.fill(tint.gradient)
				.matchedGeometryEffect(id: "ACTIVETAB", in: animation)
		}
	}
	
	private var textView : some View{
		Text(tab.rawValue.capitalized)
			.font(.caption)
			.foregroundStyle(activeTab == tab ? tint : inactiveTint)
	}
}
