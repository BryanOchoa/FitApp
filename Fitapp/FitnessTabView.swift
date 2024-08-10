//
//  FitnessTabView.swift
//  Fitapp
//
//  Created by Bryan Ochoa-Flores on 8/9/24.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [ NSAttributedString.Key.foregroundColor: UIColor.label ]
        
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            HistoricDataView()
                .tag("historic")
                .tabItem {
                    Image(systemName: "chart.xyaxis.line")
                    Text("Charts")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
