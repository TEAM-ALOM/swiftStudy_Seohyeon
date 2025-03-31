//
//  ContentView.swift
//  week2_singleton
//
//  Created by 박서현 on 3/27/25.
//

import SwiftUI

class UserInfo {
  static let shared = UserInfo()
  // 전역으로 저장될 것, static을 이용해 Instance를 저장할 프로퍼티를 하나 생성
  
  var id: String?
  var password: String?
  var name: String?
  
  private init() {}
  // 혹시라도 init 함수를 호출해 Instance를 또 생성하는 것을 막기 위해 init() 함수 접근 제어자를 private로 지정
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
