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
        
//        Image(systemName: "figure.2.and.child.holdinghands")
        Image("peach_Gamst")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(height: 150)
          .cornerRadius(30)
          .font(.system(size: 70))
          .foregroundStyle(.white)
      }
      
      Text("황도 인직")
        .font(.title)
        .fontWeight(.semibold)
        .padding(.top)
      
      Text("세상에서 제일 사랑스러운 남자")
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
