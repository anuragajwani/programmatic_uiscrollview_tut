//
//  RecipeHeaderView.swift
//  PaellaRecipe
//
//  Created by Anurag Ajwani on 26/01/2021.
//

import UIKit

class RecipeHeaderView: UIView {
    
    private let recipeTitle = "Chicken Paella Recipe"
    private let recipeDescription = """
                                    Paella is a Valencian rice dish that has ancient roots but its modern form originated in the mid-19th century in the area around the Albufera lagoon on the east coast of Spain adjacent to the city of Valencia.
                                    """
    
    init() {
        super.init(frame: .zero)
        self.loadViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func loadViews() {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        self.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = self.recipeTitle
        titleLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        stackView.addArrangedSubview(titleLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.numberOfLines = 0
        descriptionLabel.text = self.recipeDescription
        stackView.addArrangedSubview(descriptionLabel)
    }
}
