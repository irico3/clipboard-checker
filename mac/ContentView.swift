//
//  ContentView.swift
//  test
//
//  Created by k002265 on 2024/11/25.
//

import SwiftUI



struct ContentView: View {
    @State private var selectedTab = 1
    var body: some View {
        TabView(selection: $selectedTab) {
            CheckType().tabItem {
                Text("CheckType")
            }.tag(1)
            WriteBoard().tabItem { Text("Write") }.tag(2)
        }.padding(.top)

    }
}

#Preview {
    ContentView()
}
