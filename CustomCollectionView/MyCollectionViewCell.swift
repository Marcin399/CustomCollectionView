//
//  MyCollectionViewCell.swift
//  CustomCollectionView
//
//  Created by Marcin on 09/12/2022.
//

import Foundation
import UIKit

class MyCollectionViewCell: UICollectionViewCell  {
    static let identifier = "MyCollectionViewCell"
    
    var imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let images: [UIImage] = [
        UIImage(named: "image1"),
        UIImage(named: "image2"),
        UIImage(named: "image3")
    ].compactMap({ $0 })

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        imageView.image = images.randomElement()
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.frame
    }
}
