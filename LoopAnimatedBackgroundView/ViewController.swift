//
//  ViewController.swift
//  LoopAnimatedBackgroundView
//
//  Created by Marco Falanga on 21/05/18.
//  Copyright © 2018 Marco Falanga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myView = CustomView(frame: view.frame)
        
        view.addSubview(myView)
        
        animateBackground(view: myView)
        
        let label = UILabel(frame: view.frame)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "An easy trick to\nanimate your background"
        
        view.addSubview(label)
        label.center = view.center
    }
}

