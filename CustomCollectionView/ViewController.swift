//
//  ViewController.swift
//  CustomCollectionView
//
//  Created by Marcin on 09/12/2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    private let bollean = [true, false]
    
    private var collectionView = UICollectionView (
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        registerCell()
        collectionView.frame = view.bounds
        collectionView.backgroundColor = .white
        collectionView.dataSource = self
    }
    
    func registerCell() {
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.register(MyCollectionViewCellBlue.self, forCellWithReuseIdentifier: MyCollectionViewCellBlue.identifier)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if self.bollean.randomElement() == true {
            let cellRed = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath)
            return cellRed
        }
        
        let cellBlue = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCellBlue.identifier, for: indexPath)
        return cellBlue
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
}







