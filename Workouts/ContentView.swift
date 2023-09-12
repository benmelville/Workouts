//
//  ContentView.swift
//  Workouts
//
//  Created by Benjamin Melville on 9/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.blue, colorScheme == .light ? .white : .gray], startPoint: .topLeading, endPoint: .bottomTrailing)
                
                VStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: WorkoutsGridView()) {
                        Label("View Workouts", systemImage: "figure.run")
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.bordered)
                    .tint(colorScheme == .light ? .black : .white)
                    .foregroundColor(colorScheme == .light ? .black : .white)
                    
                    Spacer()
                }
                .padding()
                
                
                
            }
            .ignoresSafeArea()
            .navigationTitle("Workout Home")

        }
        .tint(Color(.label))

    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
