//
//  WorkoutsGridView.swift
//  Workouts
//
//  Created by Benjamin Melville on 9/11/23.
//

import SwiftUI

struct WorkoutsGridView: View {
    
    @StateObject var viewModel = WorkoutsGridViewModel()
    
    @Environment(\.colorScheme) var colorScheme

    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: viewModel.columns) {
                ForEach(WorkoutData.workouts) { exercise in
                    NavigationLink(destination: WorkoutDetailView(exercise: exercise)) {
                        ExerciseTitleView(exercise: exercise)
                    }
                }
            }
        }
        .background(LinearGradient(colors: [colorScheme == .light ? .white : .gray, .blue],
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing))
    }
}

struct WorkoutsGridView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsGridView()
    }
}
