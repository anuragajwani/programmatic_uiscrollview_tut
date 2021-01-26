//
//  ViewController.swift
//  PaellaRecipe
//
//  Created by Anurag Ajwani on 26/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let paellaImage = UIImage(named: "paella.JPG")!

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
        
    }
}

