//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     let emojis = ["🤠": ["Have you ever thought just maybe you belong with me?", "Our song is the slamming screen door", "When you think Tim McGraw, I hope you think of me."], "🎈": ["I don't know about you, but I'm feeling 22", "You need to calm down, you're being too loud.", "Shake it off, shake it off."]]

    @IBAction func showMessage(sender: UIButton) {
        var selectedEmotion = sender.titleLabel?.text
        if selectedEmotion == "🤠" {
//            let customMessages = ["country taylor" : ["Have you ever thought just maybe you belong with me?", "Our song is the slamming screen door", "When you think Tim McGraw, I hope you think of me."]]
//            let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[0]
            let number = Int.random(in: 0..<3)
            let alertController = UIAlertController(title: "Swiftoji", message: emojis["🤠"]?[number] , preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
        }
        else {
            let number = Int.random(in: 0..<3)
            let customMessages = ["pop taylor" : ["I don't know about you, but I'm feeling 22", "You need to calm down, you're being too loud.", "Shake it off, shake it off."]]
           
         let alertController = UIAlertController(title: "Swiftoji", message: emojis["🎈"]?[number] , preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
            present(alertController, animated: true, completion: nil)}
    
   
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
}
}
}

