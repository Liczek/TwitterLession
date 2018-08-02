//
//  HomeController.swift
//  TwitterLession
//
//  Created by Paweł Liczmański on 01.08.2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit



class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

	let cellID = "cellID"
	let headerID = "headerID"
	let footerID = "footerID"
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		collectionView?.backgroundColor = .green
		collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellID)
		collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerID)
		collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerID)
    }
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 4
	}
	
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! WordCell

		
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		let cellSize = CGSize(width: collectionView.frame.width, height: 50)
		return cellSize
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		let headerSize = CGSize(width: self.view.frame.width, height: 50)
		return headerSize
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
		let footerSize = CGSize(width: self.view.frame.width, height: 50)
		return footerSize
	}
	
	override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		if kind == UICollectionElementKindSectionHeader {
			let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerID, for: indexPath)
			
			header.backgroundColor = .red
			return header
		} else {
			let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerID, for: indexPath)
			footer.backgroundColor = .blue
			return footer
		}
		
	}
	
	
	
	
	
	
	

	
	

	
}
