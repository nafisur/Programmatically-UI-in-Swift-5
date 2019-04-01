//
//  FirstScreenVC.swift
//  FirstDemo
//
//  Created by Nafisur Ahmed on 01/04/19.
//  Copyright © 2019 Nafisur Ahmed. All rights reserved.
//

import UIKit

class FirstScreenVC: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        setupNextButton()
    }
    
    func setupNextButton() {
        
        nextButton.backgroundColor = .white
        nextButton.setTitle("Next Button", for: .normal)
        nextButton.setTitleColor(.red, for: .normal)

        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        view.addSubview(nextButton)
        setupNextButtonConstraints()
    }
    
   @objc func nextButtonTapped() {
        
        let secondScreen = NextScreenVC()
        secondScreen.title = "Second Screen"
        navigationController?.pushViewController(secondScreen, animated: true)
    }
    
    func setupNextButtonConstraints() {
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
