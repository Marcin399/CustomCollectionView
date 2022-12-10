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
        collectionViewLayout: createLayout()
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.frame = view.bounds
        collectionView.backgroundColor = .white
        collectionView.dataSource = self
    }
    
    static func createLayout() -> UICollectionViewCompositionalLayout {

        let sItem1 = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1)))
        sItem1.contentInsets.trailing = 4
        let sItem2 = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1)))
        sItem2.contentInsets.leading = 4

        let hGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.5))
        let hGroup = NSCollectionLayoutGroup.horizontal(layoutSize: hGroupSize, subitems: [sItem1, sItem2])
        hGroup.contentInsets.top = 4

        let mItem = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.5)))
        mItem.contentInsets.bottom = 4

        let rightGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1))
        let rightGroup = NSCollectionLayoutGroup.vertical(layoutSize: rightGroupSize, subitems: [mItem, hGroup])
        rightGroup.contentInsets.leading = 4

        let lItem = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.75)))
        lItem.contentInsets.top = 4
        
        let upItem = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.25)))
        upItem.contentInsets.bottom = 4
        
        let leftGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1))
        let leftGroup = NSCollectionLayoutGroup.vertical(layoutSize: leftGroupSize, subitems: [upItem, lItem])
        leftGroup.contentInsets.trailing = 4
        
        let mainHGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1))
        let mainHGroup = NSCollectionLayoutGroup.horizontal(layoutSize: mainHGroupSize, subitems: [leftGroup, rightGroup])

        let section = NSCollectionLayoutSection(group: mainHGroup)
        section.contentInsets = .init(top: 8, leading: 8, bottom: 8, trailing: 8)
        section.interGroupSpacing = 8
       
        return UICollectionViewCompositionalLayout(section: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
}


/*
 Aby stworzyć podstwowy Collection View należy:
 1.Tworzymy obiekt z UICollectionView. Parametr "frame" .zero = CGRect(x: 0, y: 0, width: 0, height: 0). Parametr collectionViewLayout ...
 2.Tworzymy nową klase która dziedziczy po UICollectionViewCell w niej tworzymy obiekt z UIImageView
 clipsToBounds Ustawienie tej wartości na truepowoduje przycięcie widoków podrzędnych do granic widoku. W przypadku ustawienia na widoki falsepodrzędne, których ramki wykraczają poza widoczne granice widoku, nie są przycinane.
 
 
 
 
 */
