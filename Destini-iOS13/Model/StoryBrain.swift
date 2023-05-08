//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


var storyNumber = 0

struct StoryBrain {
    let stories = [
        Story(
        tittle: ["You see a fork in the road.", "You see a tiger,", "You find a treasure chest."],
        choice1:["Take a Left", "Shout for help.", "Open it."],
        choice2: ["Take a right", "Play dead.", "Check for traps."])
    ]
    
    func nextStory(userChoice: String) -> Int{
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1[storyNumber]{
            storyNumber = 1
        } else if userChoice == currentStory.choice2[storyNumber]{
            storyNumber = 2
        }else {
            storyNumber = 0
        }
        return storyNumber
        
    }
}
