//
//  SelectionViewController.swift
//  Overwatch
//
//  Created by Enrique Torrendell on 10/26/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var characterStackView: UIStackView!
    @IBOutlet weak var characterStackViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroScrollView: UIScrollView!
    
    @IBOutlet weak var changeInHeroType: UISegmentedControl!
    
    var game: Game = Game()
    
    var heroType: HeroType! {
        didSet {
            game.heroType = self.heroType
        }
    }
    
    var index: Int = 0
    
    @IBAction func changeInHeroType(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            heroType = .offense
        case 1:
            heroType = .defense
        case 2:
            heroType = .tank
        case 3:
            heroType = .support
        default:
            break
        }
        
        updateStackViewWithHeroes()

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heroScrollView.delegate = self

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.heroType = .offense
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        updateStackViewWithHeroes()
    }
    
    func updateStackViewWithHeroes() {
        
        for view in characterStackView.subviews {
            view.removeFromSuperview()
        }
        
        let displayHeroe = game.heroesForType()
        let stackWidth = containerView.frame.width * CGFloat(displayHeroe.count - 1)
        
        characterStackViewWidthConstraint.constant = stackWidth
        
        heroNameLabel.text = displayHeroe[index].name.description
        
        for heroe in displayHeroe {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.image = heroe.produceprofileImage()
            characterStackView.addArrangedSubview(imageView)
        }

    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        self.index = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
        
        let heroe = game.heroesForType()
            heroNameLabel.text = heroe[index].name.description
    }
}


