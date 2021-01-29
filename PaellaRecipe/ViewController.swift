//
//  ViewController.swift
//  PaellaRecipe
//
//  Created by Anurag Ajwani on 26/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let paellaImage = UIImage(named: "paella.JPG")!
    
    private var scrollView: UIScrollView!
    private var scrollContentView: UIView!

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = UIView()
        self.view.backgroundColor = .white
        self.loadViews()
    }
    
    private func loadViews() {
        self.loadScrollView()
        self.loadContents()
    }
    
    private func loadScrollView() {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.alignSubview(scrollView)
        self.scrollView = scrollView
        
        let contentView = UIView()
        scrollView.alignSubview(contentView)
        self.scrollContentView = contentView
            
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.heightAnchor),
        ])
    }
    
    private func loadContents() {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 16
        self.scrollView.alignSubview(stackView, withMargin: 15)
        
        let imageView = self.loadImageView()
        stackView.addArrangedSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: self.paellaImage.size.height / self.paellaImage.size.width)
        ])
        stackView.addArrangedSubview(self.loadHeaderView())
        stackView.addArrangedSubview(self.loadStepsView())
    }
    
    private func loadImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = self.paellaImage
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
        
    private func loadHeaderView() -> RecipeHeaderView {
        let headerView = RecipeHeaderView()
        headerView.translatesAutoresizingMaskIntoConstraints = false
        return headerView
    }
        
    private func loadStepsView() -> RecipeStepsView {
        let stepsView = RecipeStepsView()
        stepsView.translatesAutoresizingMaskIntoConstraints = false
        return stepsView
    }
}

