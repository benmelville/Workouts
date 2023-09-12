//
//  ExerciseTitleView.swift
//  Workouts
//
//  Created by Benjamin Melville on 9/11/23.
//

import SwiftUI

struct ExerciseTitleView: View {
    
    let exercise: Exercise
    
    var body: some View {
        VStack {
            Image(exercise.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            
            Text(exercise.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

struct ExerciseTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseTitleView(exercise: WorkoutData.sampleExercise)
    }
}
