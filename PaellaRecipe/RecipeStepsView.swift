//
//  RecipeStepsView.swift
//  PaellaRecipe
//
//  Created by Anurag Ajwani on 26/01/2021.
//

import UIKit

private let paellaStep1 = """
                          Heat oil in a paellera. Once hot enough add chicken meat after seasoning with salt. Sauté for a little while. Add green vegetables of your choice such as bell peppers. Add garlic and grated tomatoes. Sauté until soft.
                          """

private let paellaStep2 = """
                          Add fresh chicken stock or alternatively water, turmeric powder and rosemary to the mix. Boil to broth. Remove the rosemary once flavour has infused.
                          """

private let paellaStep3 = """
                          Add rice and simmer. Keep adding chicken stock or water as needed until rice is cooked.
                          """

class RecipeStepsView: UIView {
    
    private let steps = [
        paellaStep1,
        paellaStep2,
        paellaStep3
    ]
    
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
        self.steps.enumerated().forEach { (enumeratedItem) in
            let itemNumber = enumeratedItem.offset + 1
            let stepView = self.getStepStackView(stepNumber: itemNumber, stepSummary: enumeratedItem.element)
            stackView.addArrangedSubview(stepView)
        }
    }
    
    private func getStepStackView(stepNumber: Int, stepSummary: String) -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        
        let stepNumberLabel = UILabel()
        stepNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        stepNumberLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        stepNumberLabel.text = "Step \(stepNumber)"
        stackView.addArrangedSubview(stepNumberLabel)
        
        let stepSummaryLabel = UILabel()
        stepSummaryLabel.translatesAutoresizingMaskIntoConstraints = false
        stepSummaryLabel.numberOfLines = 0
        stepSummaryLabel.text = stepSummary
        stackView.addArrangedSubview(stepSummaryLabel)
        
        return stackView
    }
}

