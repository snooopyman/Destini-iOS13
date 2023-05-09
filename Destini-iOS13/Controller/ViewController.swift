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

        if (sender.currentTitle == "The" || sender.currentTitle == "End") { //if its "The End"
            choice2Button.isHidden = true
            choice1Button.setTitle("Start again", for: .normal)
            choice1Button.backgroundColor = UIColor.red
            choice1Button.titleLabel?.font = UIFont.systemFont(ofSize: 34.0, weight: .bold)
            storyNumber = 0
            
            
        } else {
            storyBrain.nextStory(userChoice: sender.currentTitle!)
            choice2Button.isHidden = false
            updateUI()
        }

    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}

