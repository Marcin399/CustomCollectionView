//
//  MyCollectionViewCell.swift
//  CustomCollectionView
//
//  Created by Marcin on 09/12/2022.
//

import Foundation
import UIKit

class MyCollectionViewCellRed: UICollectionViewCell  {
   
    static let identifier = "MyCollectionViewCell"
  
    static let alpha = [
        CGFloat(0.02),
        CGFloat(0.04),
        CGFloat(0.06),
        CGFloat(0.08),
        CGFloat(0.1),
        CGFloat(0.12),
        CGFloat(0.14),
        CGFloat(0.16),
        CGFloat(0.18),
        CGFloat(0.2),
    ]
    
    var imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 10
        imageView.layer.borderWidth = 4
        imageView.layer.borderColor = CGColor(red: 1, green: 0, blue: 0, alpha: 0.2)
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        imageView.layer.backgroundColor = CGColor(red: 1, green: 0, blue: 0, alpha: MyCollectionViewCellRed.alpha.randomElement() ?? 0.00)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.frame
    }
}

class MyCollectionViewCellBlue: UICollectionViewCell {
    static let identifier = "MyCollectionViewCellBue"
    static let alpha = [
        CGFloat(0.02),
        CGFloat(0.04),
        CGFloat(0.06),
        CGFloat(0.08),
        CGFloat(0.1),
        CGFloat(0.12),
        CGFloat(0.14),
        CGFloat(0.16),
        CGFloat(0.18),
        CGFloat(0.2),
    ]
    
    var imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 10
        imageView.layer.borderWidth = 4
        imageView.layer.borderColor = CGColor(red: 0, green: 0, blue: 1, alpha: 0.2)
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        imageView.layer.backgroundColor = CGColor(red: 0, green: 0, blue: 1, alpha: MyCollectionViewCellRed.alpha.randomElement() ?? 0.00)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.frame
    }
}
