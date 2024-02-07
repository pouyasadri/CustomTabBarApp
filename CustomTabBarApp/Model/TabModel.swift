//
//  TabModel.swift
//  CustomTabBarApp
//
//  Created by Pouya Sadri on 07/02/2024.
//

import SwiftUI

enum Tab : String, CaseIterable{
	case home
	case services
	case partners
	case activity
	
	var systemImage : String{
		switch self{
			case .home:
				return "house"
			case .services:
				return "envelope.open.badge.clock"
			case .partners:
				return "hand.raised"
			case .activity:
				return "bell"
		}
	}
	
	var index: Int{
		return Tab.allCases.firstIndex(of: self) ?? 0
	}
	
	var color : Color{
		switch self {
			case .home:
				return .blue
				
			case .services:
				return .yellow
				
			case .partners:
				return .green
				
			case .activity:
				return .purple
		}
	}
}
