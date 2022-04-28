//
//  CustomButton.swift
//  testNavBar
//
//  Created by yuki.osu on 2021/03/18.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupAttributes()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setupAttributes()
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()

        setupAttributes()
    }

    private func setupAttributes() {
        layer.cornerRadius = 4.0
        backgroundColor = UIColor(red: 0x33 / 0xFF, green: 0x33 / 0xFF, blue: 0x33 / 0xFF, alpha: 1.0)
        setTitleColor(.yellow, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
    }
}
