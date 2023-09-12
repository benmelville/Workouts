//
//  WorkoutDetailView.swift
//  Workouts
//
//  Created by Benjamin Melville on 9/11/23.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    var exercise: Exercise
    
    @Environment(\.colorScheme) var colorScheme

    
    var body: some View {
        VStack {
            
            
            ExerciseTitleView(exercise: exercise)
            
            
            ScrollView {
                Text(exercise.description)
                    .font(.body)
                    .fontWeight(.medium)
                    .padding()
            }
                
        }
        .navigationTitle("\(exercise.name) details")
        .background(LinearGradient(colors: [colorScheme == .light ? .white : .gray, .blue],
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing))
    }
}

struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(exercise: WorkoutData.sampleExercise)
    }
}
