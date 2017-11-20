//
//  MinimalCheckbox.swift
//  Checkbox
//
//  Created by Saatvik Arya on 11/11/17.
//  Copyright © 2017 Saatvik Arya. All rights reserved.
//

import UIKit

class MinimalCheckbox: UIButton {

	// MARK: Initialization
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupCheckbox()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setupCheckbox()
	}
	
	// MARK: Private Methods
	private func setupCheckbox() {
		setImage(UIImage(named: "checkbox-unchecked"), for: .normal)
		setImage(UIImage(named: "checkbox-checked"), for: .selected)
		addTarget(self, action: #selector(checkboxTapped(button: )), for: .touchUpInside)
	}
	
	// MARK: Button Action
	@objc func checkboxTapped(button: UIButton) {
		if(button.isSelected == true){
			button.isSelected = false
		}
		else {
			button.isSelected = true
		}
		print("Checkbox Pressed")
	}

}
