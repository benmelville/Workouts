//
//  ContentView.swift
//  Workouts
//
//  Created by Benjamin Melville on 9/11/23.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    
    let db = Firestore.firestore()
        
    @Environment(\.colorScheme) var colorScheme
    
    @State private var title = ""
    
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
                    .fontWeight(.bold)
                    .padding()
                    
                    Spacer()
                    
                    TextField("Workouts to add", text: $title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    
                    Button {
                        addTodoToFirestore(title: title)
                    } label : {
                        Text("add workout")
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(colorScheme == .light ? .black : .white)
                    .fontWeight(.bold)
                    .padding()
                    
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
func addTodoToFirestore(title: String) {
    let db = Firestore.firestore()
    
    db.collection("todos").addDocument(data: [
        "title": title,
        "completed": false
    ])
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
