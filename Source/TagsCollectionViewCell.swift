//
//  TagsCollectionViewCell.swift
//  MMSegmentedControl
//
//  Created by Aqua on 2017/4/25.
//  Copyright © 2017年 Aqua. All rights reserved.
//

import UIKit

internal class TagsCollectionViewCell: UICollectionViewCell {
    
    let titleLabel = UILabel()
    
    override var isSelected: Bool {
        didSet {
            contentView.layer.borderWidth = isSelected ? 0 : Const.onePx
            titleLabel.textColor = isSelected ? UIColor(hex: 0xff4f53) : UIColor.black
        }
    }
    
    private func commonInit() {
        contentView.layer.borderColor = UIColor(hex: 0x999999).cgColor
        contentView.layer.borderWidth = Const.onePx
        contentView.layer.cornerRadius = Const.tagsHeight / 2
        
        titleLabel.font = UIFont.defaultFont
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        
        NSLayoutConstraint(item: titleLabel,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: contentView,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0).isActive = true
        
        NSLayoutConstraint(item: titleLabel,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: contentView,
                           attribute: .centerY,
                           multiplier: 1,
                           constant: 0).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
