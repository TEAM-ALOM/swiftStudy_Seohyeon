//
//  ContentView.swift
//  week3_TabView
//
//  Created by 박서현 on 3/31/25.
//

import SwiftUI

let gradientColors: [Color] = [
  .gradientTop,
  .gradientBottom
]

struct ContentView: View {
  var body: some View {
    TabView {
      WelcomePage()
      FeaturesPage()
    }
    .background(Gradient(colors: gradientColors))
    .tabViewStyle(.page)
    .foregroundStyle(.white)
  }
}

#Preview {
    ContentView()
}
