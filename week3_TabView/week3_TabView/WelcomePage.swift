//
//  WelcomePage.swift
//  week3_TabView
//
//  Created by 박서현 on 3/31/25.
//

import SwiftUI

struct WelcomePage: View {
  var body: some View {
    VStack {
      ZStack {
        RoundedRectangle(cornerRadius: 30)
          .frame(width: 150, height: 150)
          .foregroundStyle(.tint)
        
        Image(systemName: "figure.2.and.child.holdinghands")
          .font(.system(size: 70))
          .foregroundStyle(.white)
      }
      
      Text("Welcome to MyApp")
        .font(.title)
        .fontWeight(.semibold)
        .padding(.top)
      
      Text("Description text")
        .font(.title2)
    }
//    .border(.orange, width: 1.5)
//    .padding()
//    .border(.purple, width: 1.5)
    // 여백의 이해
  }
  
}

#Preview {
    WelcomePage()
}
