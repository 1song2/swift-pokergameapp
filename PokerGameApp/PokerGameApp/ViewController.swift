//
//  ViewController.swift
//  PokerGameApp
//
//  Created by Song on 2021/02/15.
//

import UIKit

class ViewController: UIViewController {
    
    let pokerCardImage = UIImage(named: "card-back")
    let cardStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let backgroundImage = UIImage(named: "bg_pattern") {
            self.view.backgroundColor = UIColor(patternImage: backgroundImage)
        }
        
        add(numberOfCardViews: 7, to: cardStackView)
        set(cardStackView)
        
        cardStackView.translatesAutoresizingMaskIntoConstraints = false
        cardStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        cardStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        cardStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
    }
    
    func set(_ stackView: UIStackView) {
        self.view.addSubview(stackView)
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 5.0
    }
    
    func add(numberOfCardViews: Int, to stackView: UIStackView) {
        for _ in 0..<numberOfCardViews {
            let pokerCardView = UIImageView(image: pokerCardImage)
            pokerCardView.translatesAutoresizingMaskIntoConstraints = false
            pokerCardView.heightAnchor.constraint(equalTo: pokerCardView.widthAnchor, multiplier: 1.27).isActive  = true
            stackView.addArrangedSubview(pokerCardView)
        }
    }
}
