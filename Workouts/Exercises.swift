//
//  Exercises.swift
//  Workouts
//
//  Created by Benjamin Melville on 9/11/23.
//

import Foundation


struct Exercise: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
}

struct WorkoutData {
    
    static let sampleExercise = Exercise(name: "bicep curls",
                                  description: "To perform a bicep curl, start by standing with your feet shoulder-width apart and holding a dumbbell in each hand with your palms facing forward. Keep your back straight and your core engaged for stability. Your arms should be fully extended, hanging by your sides, with your elbows close to your torso.\n\nNext, exhale as you slowly lift the weights by bending your elbows, making sure to keep your upper arms stationary. Continue lifting until your forearms are nearly vertical, and you feel a contraction in your biceps. Hold this peak contraction for a brief moment at the top of the movement, squeezing your biceps.\n\nInhale as you lower the weights back down to the starting position in a controlled manner. Avoid using momentum to swing the weights and focus on using your biceps to perform the exercise.",
                                  imageName: "bicep_curls")
    
    
    static let workouts = [
        
        Exercise(name: "bicep curls",
                 description: "To perform a bicep curl, start by standing with your feet shoulder-width apart and holding a dumbbell in each hand with your palms facing forward. Keep your back straight and your core engaged for stability. Your arms should be fully extended, hanging by your sides, with your elbows close to your torso.\n\nNext, exhale as you slowly lift the weights by bending your elbows, making sure to keep your upper arms stationary. Continue lifting until your forearms are nearly vertical, and you feel a contraction in your biceps.\n\nHold this peak contraction for a brief moment at the top of the movement, squeezing your biceps.\n\nInhale as you lower the weights back down to the starting position in a controlled manner. Avoid using momentum to swing the weights and focus on using your biceps to perform the exercise.",
                 imageName: "bicep_curls"),
        
        Exercise(name: "bike",
                 description: "Riding a stationary bike is a great way to get a cardiovascular workout indoors. To use a stationary bike, start by adjusting the seat height to a comfortable level, ensuring that your feet can reach the pedals comfortably with a slight bend in your knees.\n\nNext, place your feet on the pedals and secure them with straps if your bike has them. Make sure your back is straight, and your hands are resting gently on the handlebars.\n\nBegin pedaling in a controlled and steady manner, maintaining a consistent pace. You can adjust the resistance level on the bike to increase or decrease the intensity of your workout.\n\nMonitor your heart rate and the time you spend on the bike to track your progress and ensure an effective workout. Finally, cool down gradually by slowing your pedaling pace and stretching your legs and back after your ride.",
                 imageName: "bike"),
        
        Exercise(name: "deadlift",
                 description: "Begin by standing with your feet hip-width apart, with the barbell centered over your feet. Your toes should be pointing slightly outward.\n\nBend at your hips and knees to lower your body and grasp the barbell with both hands, using an overhand grip (palms facing you) or a mixed grip (one palm facing you, one palm facing away).\n\nKeep your back straight, chest up, and core engaged. Your arms should be fully extended, and your shoulders should be pulled back.\n\nLift the barbell by straightening your hips and knees simultaneously, pushing through your heels. Maintain a neutral spine as you stand upright.\n\nLower the barbell back down in a controlled manner by pushing your hips back first, then bending your knees. Keep the barbell close to your body throughout the movement, and ensure your back remains straight.",
                 imageName: "deadlift"),
        
        Exercise(name: "jump rope",
                 description: "Start by holding the handles of the jump rope with each hand. Stand with your feet close together and the rope behind you. Ensure the rope is the correct length by stepping on the middle of it and pulling the handles upward. The handles should reach your armpits.\n\nSwing the rope over your head and in front of your body, using your wrists and forearms to rotate it. As the rope comes down, jump off the ground slightly, just enough to clear the rope. Land softly on the balls of your feet.\n\nKeep your body upright, with your chest up and your core engaged. Make sure your elbows are close to your sides, and your wrists are the primary drivers of the rope's rotation.\n\nMaintain a consistent rhythm and pace as you continue jumping. Start with a slower, comfortable speed, and gradually increase your speed and intensity as you become more proficient.\n\nTo increase the challenge, try various jump rope techniques like double unders (where the rope passes under your feet twice per jump) or alternate your footwork. Remember to start with short sessions and gradually increase your jump rope workout duration to avoid fatigue or injury.",
                 imageName: "jump_rope"),
        
        Exercise(name: "pullups",
                 description: "Find a sturdy horizontal bar or a pull-up station. Ensure the bar can support your body weight. Place your hands shoulder-width apart on the bar with your palms facing away from your body (overhand grip).\n\nHang from the bar with your arms fully extended, and your legs should not touch the ground. Your body should be in a straight line from head to heels.\n\nEngage your core muscles and focus on keeping your body rigid. Avoid swinging or using momentum to pull yourself up.\n\nStart the pull-up by retracting your shoulder blades and bending your elbows. Pull your chest toward the bar while exhaling. Keep your elbows close to your body throughout the movement.\n\nLower yourself back down in a controlled manner, fully extending your arms. Repeat the movement for the desired number of repetitions. Start with assisted pull-ups or use resistance bands if you're a beginner and gradually progress to unassisted pull-ups as you build strength.",
                 imageName: "pullups"),
        
        Exercise(name: "pushups",
                 description: "Start in a plank position with your hands placed slightly wider than shoulder-width apart and your fingers pointing forward. Your body should form a straight line from head to heels, and your toes should be touching the ground.\n\nEngage your core muscles and keep your back flat. Avoid sagging your hips or arching your lower back.\n\nLower your body toward the ground by bending your elbows. Keep them close to your torso, and continue to look forward to maintain proper alignment.\n\nLower yourself until your chest is just above the ground or as far as your strength allows, ideally reaching a 90-degree angle at your elbows.\n\nPush through your palms, extending your elbows and returning to the starting position. Complete the movement by fully extending your arms, but do not lock your elbows. Perform the desired number of repetitions, maintaining proper form throughout.",
                 imageName: "pushups"),
        
        Exercise(name: "squats",
                 description: "Begin by standing with your feet shoulder-width apart or slightly wider. Ensure that your feet are pointing forward or slightly turned out.\n\nKeep your chest up, shoulders back, and your core engaged. You can place your hands on your hips, extend them forward, or hold them by your sides for balance.\n\nInitiate the squat by bending at your hips and knees simultaneously. Imagine sitting back into a chair as you lower your body. Ensure your knees are aligned with your toes and don't let them cave inward.\n\nLower yourself until your thighs are at least parallel to the ground or as far as your mobility and strength allow. Maintain a neutral spine throughout the movement, avoiding excessive rounding of your lower back.\n\nPush through your heels to return to the starting position, straightening your hips and knees. Exhale as you stand up. Perform the desired number of repetitions while maintaining proper form and control.",
                 imageName: "squats"),
        
        Exercise(name: "rows",
                 description: "Begin by standing with your feet shoulder-width apart, holding a dumbbell in each hand with your palms facing your body. You can also use a barbell or an EZ bar for this exercise.\n\nBend your knees slightly and hinge at your hips, pushing your buttocks back while maintaining a straight back and a neutral spine. Keep your chest up and your gaze forward.\n\nAs you hinge forward, allow the weights to hang in front of you, with your arms fully extended. Your upper body should be at about a 45-degree angle to the ground.\n\nExhale as you pull the weights toward your lower ribcage, retracting your shoulder blades and keeping your elbows close to your body. Focus on squeezing your back muscles as you lift the weights.\n\nInhale as you lower the weights back down to the starting position, fully extending your arms. Perform the desired number of repetitions while maintaining good form, and then return to a standing position.",
                 imageName: "rows")
    
    
    ]
}
