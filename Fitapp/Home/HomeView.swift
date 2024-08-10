//
//  HomeView.swift
//  Fitapp
//
//  Created by Bryan Ochoa-Flores on 8/9/24.
//

import SwiftUI

struct HomeView: View {
    @State var calories : Int = 123
    @State var active : Int = 52
    @State var stand : Int = 8
    
    var mockActivities = [
        Activity(id: 0, title: "Todays Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,234"),
        Activity(id: 1, title: "Todays", subtitle: "Goal 1,000", image: "figure.walk", tintColor: .red, amount: "812"),
        Activity(id: 2, title: "Todays Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9,234"),
        Activity(id: 3, title: "Todays Steps", subtitle: "Goal 50,000", image: "figure.run", tintColor: .purple, amount: "59,234"),
    ]
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading){
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    
                    Spacer()
                    
                    VStack{
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.green)
                            
                            Text("12 mins")
                                .bold()
                        }
                        .padding(.bottom)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                            
                            Text("8 hours")
                                .bold()
                        }
                    }
                    Spacer()
                    
                    ZStack{
                        ProgressCircleView(progress: $calories, goal: 600, color: .red)
                        ProgressCircleView(progress: $active, goal: 60, color: .green)
                            .padding(.all, 20)
                        ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                            .padding(.all, 40)
                    }.padding(.horizontal)
                    
                    Spacer()
                }
                .padding()
                
                HStack{
                    Text("Fitness Activity")
                        .font(.title2)
                    
                    Spacer()
                    
                    Button{
                        print("show more")
                    } label: {
                        Text("Show More")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                    }
                }.padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 2), count: 2)) {
                    ForEach(mockActivities, id: \.id){activity in
                    ActivityCard(activity: activity)}
                }.padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeView()
}

