//
//  ViewController.swift
//  Quotes
//
//  Created by Denis Markov on 7/19/18.
//  Copyright © 2018 Denis Markov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteText: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var authorNameLabel: UILabel!
    
    let quotes = [
        "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what's next.",
        "No matter how small you start, start something that matters.",
        "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of hogh achivement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."]
    
    let authorNames = [
        "Steve Jobs", "Brendon Burchard", "Theodore Roosevelt"
    ]
    let imageNames = [
        "stevejobs", "brendon_burchard", "theodore_roosevelt"
    ]

    @IBAction func inspireMeDidTap(_ sender: Any) {
        
        let randonNumer = Int(arc4random()) % 3
        
        let newQuote = quotes[randonNumer]
        let newAuthor = authorNames[randonNumer]
        let authorImageName = imageNames[randonNumer]
        quoteText.text = newQuote
        authorImage.image = UIImage(named: authorImageName)
        authorNameLabel.text = newAuthor
        
    }
    
}

