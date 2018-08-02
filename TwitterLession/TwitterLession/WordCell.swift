//
//  WordCell.swift
//  TwitterLession
//
//  Created by Paweł Liczmański on 02.08.2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class WordCell: UICollectionViewCell {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupCell()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	let label: UILabel = {
		let label = UILabel()
		label.text = "Test test Test"
		label.font = UIFont.boldSystemFont(ofSize: 18)
		label.textColor = .black
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	func setupCell() {
		backgroundColor = .yellow
		self.addSubview(label)
		let offset: CGFloat = 8
		label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: offset).isActive = true
		label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -offset).isActive = true
		label.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
		label.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
	}
	
}


