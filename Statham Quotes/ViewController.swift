//
//  ViewController.swift
//  Statham Quotes
//
//  Created by Мирошниченко Марина on 16.03.2020.
//  Copyright © 2020 Мирошниченко Марина. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    static let stathamImage = UIImage(named: "Jason Statham")
    let imageView = UIImageView(image: ViewController.stathamImage)
    
    let quotes = [
        "If you got a good imagination, a lot of confidence and you kind of know what you are saying, then you might be able to do it. I know a lot of colorful characters at home that would make great actors.",
        "I don't do isolation body building; I just do practical things that help me with the kind of things that are asked of me in action movies. You know, a lot of kick boxing, a lot of sparring.",
        "Once you expose your private life, if you give one little bit, the floodgates are open and everyone's got a free range for you.",
        "Every single day has a different combination of exercises. It always changes, and that's what keeps things interesting.",
        "I love people who have a good sense of humor, tell a good story, tell a good joke.",
        "When I'm getting ready for a movie, let's just say my diet is 'The Antisocial Diet.' I don't go to restaurants. I don't eat what I really want to eat. I don't eat much. I eat small things frequently. Lots of protein and greens. And I don't eat with people, because there's a tendency to get social and then to overeat.",
    ]
    
    @IBOutlet var quoteLabel: UILabel?
    
    // MARK: - Public methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        quoteLabel?.text = quotes[0]
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            imageView.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -44),
        ])
    }
    
    @IBAction func onOneMoreButton() {
        var random = SystemRandomNumberGenerator()
        let nextIndexOfQuotes = random.next(upperBound: UInt(quotes.count))
        
        quoteLabel?.text = quotes[Int(nextIndexOfQuotes)]
    }
}
