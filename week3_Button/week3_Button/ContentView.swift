//
//  ContentView.swift
//  week3_Button
//
//  Created by 박서현 on 3/31/25.
//

import SwiftUI

struct ContentView: View {
  @State private var numberOfDice: Int = 1
  
  var body: some View {
    VStack {
      Text("Dice Roller")
        .font(.largeTitle.lowercaseSmallCaps())
        .foregroundStyle(.white)
      
      HStack {
        ForEach(1...numberOfDice, id: \.description) { _ in
          DiceView()
        }
      }
      
      HStack {
        Button("Remove Dice", systemImage: "minus.circle.fill") {
          withAnimation {
            numberOfDice -= 1
          }
        }
        .disabled(numberOfDice == 1)
        
        Button("Add Dice", systemImage: "plus.circle.fill") {
          numberOfDice += 1
        }
        .disabled(numberOfDice == 5)
      }
      .padding()
      .labelStyle(.iconOnly)
      .font(.title)
    }
    .padding()
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.appBackground)
    .tint(.white)
  }
}

#Preview {
    ContentView()
}
