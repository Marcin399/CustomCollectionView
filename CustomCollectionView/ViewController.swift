//
//  ViewController.swift
//  CustomCollectionView
//
//  Created by Marcin on 09/12/2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
   
    private var collectionView = UICollectionView (
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.frame = view.bounds
        collectionView.backgroundColor = .green
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
}


/*
 Aby stworzyć podstwowy Collection View należy:
 1.Tworzymy obiekt z UICollectionView. Przekazujemy jako parametr "frame" .zero = CGRect(x: 0, y: 0, width: 0, height: 0)
 
 
 
 
 */
