//
//  WorkoutsGridViewModel.swift
//  Workouts
//
//  Created by Benjamin Melville on 9/11/23.
//

import SwiftUI

final class WorkoutsGridViewModel : ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
}
