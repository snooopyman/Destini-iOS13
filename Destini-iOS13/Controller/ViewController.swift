//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        var storyNumber = storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()

    }
    
    func updateUI() {
        print("Stories\(storyBrain.stories)")
        storyLabel.text = storyBrain.stories[0].tittle[storyNumber]
        choice1Button.setTitle(storyBrain.stories[0].choice1[storyNumber], for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2[storyNumber], for: .normal)
    }
    
}

