//
//  HerokuGameCell.swift
//  FindCard
//
//  Created by Chandresh Maurya on 12/05/20.
//  Copyright © 2020 com.chandresh. All rights reserved.
//

import UIKit

/// A UICollectionViewCell with card view inside.
class HerokuGameCell: UICollectionViewCell {
    @IBOutlet weak var gmaeView: FCHerokuGameCardView!
    let flipAnimationDuration = 0.5
    override func awakeFromNib() {
        super.awakeFromNib()
        gmaeView.backgroundColor = .red
    }
    // Update the cell
    func updateCell(card: Card, disPlayText: String, isAnimate: Bool = false, completionHandler: CompletionHandler? = nil) {
        gmaeView.status = card.status
        switch card.status {
        case .front:
            self.gmaeView.text = card.name
            if isAnimate {
                flip(direction: UIView.AnimationOptions.transitionFlipFromLeft, duration: flipAnimationDuration, completionHandler: completionHandler)
            }
        case .resloved:
            self.gmaeView.text = card.name
            if isAnimate {
                flip(direction: UIView.AnimationOptions.transitionFlipFromLeft, duration: flipAnimationDuration, completionHandler: completionHandler)
            }
        default:
            self.gmaeView.text = disPlayText
            if isAnimate {
                flip(direction: UIView.AnimationOptions.transitionFlipFromRight, duration: flipAnimationDuration, completionHandler: completionHandler)
            }
        }
    }
}
