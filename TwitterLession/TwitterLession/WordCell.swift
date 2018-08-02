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
		
		self.backgroundColor = .blue
		configureCell()
		
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func configureCell() {
		self.backgroundColor = .yellow
		
		
		let offset: CGFloat = 8
		let textLabel: UILabel = {
			let label = UILabel()
			label.text = "Test test test"
			label.font = UIFont.boldSystemFont(ofSize: 18)
			label.translatesAutoresizingMaskIntoConstraints = false
			label.textAlignment = .center
			return label
		}()
		self.addSubview(textLabel)
		
		textLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: offset).isActive = true
		textLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -offset).isActive = true
		textLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
		textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
	}
	
}
