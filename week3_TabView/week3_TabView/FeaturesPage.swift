//
//  FeaturesPage.swift
//  week3_TabView
//
//  Created by 박서현 on 3/31/25.
//

import SwiftUI

struct FeaturesPage: View {
  var body: some View {
    VStack(spacing: 30) {
      Text("Features")
        .font(.title)
        .fontWeight(.semibold)
        .padding(.bottom)
        .padding(.top, 100)
      FeatureCard(iconName: "person.2.crop.square.stack.fill",
                              description: "인직이는 황도를 잘 먹고 게임도 잘 하고 축구를 좋아합니다")
      
      FeatureCard(iconName: "quote.bubble.fill",
                  description: "감랑해 ♡")
      
      Spacer()
    }
    .padding()
  }
}

#Preview {
    FeaturesPage()
    .frame(maxHeight: .infinity)
    .background(Gradient(colors: gradientColors))
    .foregroundStyle(.white)
}
