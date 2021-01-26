//
//  UIView+alignSubview.swift
//  PaellaRecipe
//
//  Created by Anurag Ajwani on 26/01/2021.
//

import UIKit

extension UIView {
    func alignSubview(_ view: UIView, withMargin margin: CGFloat = 0) {
        view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(view)
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: margin),
            view.topAnchor.constraint(equalTo: self.topAnchor, constant: margin),
            view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -margin),
            view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -margin),
        ])
    }
}
