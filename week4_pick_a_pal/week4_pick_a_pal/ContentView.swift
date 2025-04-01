//
//  ContentView.swift
//  week4_pick_a_pal
//
//  Created by 박서현 on 4/1/25.
//

import SwiftUI

struct ContentView: View {
  @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
  @State private var nameToAdd = ""
  @State private var pickedName = ""
  @State private var shouldRemovePickedName = false
  
  var body: some View {
    VStack {
      VStack(spacing: 8) {
        Image(systemName: "person.3.sequence.fill")
          .foregroundStyle(Color("theme"))
          .symbolRenderingMode(.hierarchical)
        Text("Pick-a-Pal")
      }
      .font(.title)
      .bold()
      
      Text(pickedName.isEmpty ? " " : pickedName)
        .font(.title2)
        .bold()
        .foregroundStyle(Color("theme"))

      List {
        ForEach(names, id: \.description) { name in
          Text(name)
        }
      }
      .clipShape(RoundedRectangle(cornerRadius: 8))
      
      TextField("Add name", text: $nameToAdd)
        .autocorrectionDisabled()
        .onSubmit {
          if !nameToAdd.isEmpty {
            names.append(nameToAdd)
            nameToAdd = ""
          }
        }
      
      Divider()
      
      Toggle("Remove when picked", isOn: $shouldRemovePickedName)
      
      Button {
        if let randomName = names.randomElement() {
          pickedName = randomName
          
          if shouldRemovePickedName {
            names.removeAll { name in
              return (name == randomName)
            }
          }
        } else {
          pickedName = ""
        }
      } label: {
        Text("Pick Random Name")
          .padding(.vertical, 8)
          .padding(.horizontal, 16)
      }
      .buttonStyle(.borderedProminent)
      .font(.title2)
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
