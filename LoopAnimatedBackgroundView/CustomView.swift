//
//  CustomView.swift
//  LoopAnimatedBackgroundView
//
//  Created by Marco Falanga on 21/05/18.
//  Copyright © 2018 Marco Falanga. All rights reserved.
//

import UIKit

struct Constants {
    static let backgroundColor = UIColor.red.withAlphaComponent(0.5)
    static let tagKey = -3
    static let transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
}

class CustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let listOfFrames: [CGRect] =
                            [CGRect(x: 0, y: 0, width: frame.width/3, height: frame.width/3),
                             CGRect(x: 0, y: 0, width: frame.width/6, height: frame.width/6),
                             CGRect(x: 0, y: 0, width: frame.width/8, height: frame.width/8),
                             CGRect(x: 0, y: 0, width: frame.width/10, height: frame.width/10),
                             CGRect(x: 0, y: 0, width: frame.width/11, height: frame.width/11)]
        
        //I add some subviews here and I will animate them using the tag -3
        let view1 = UIView(frame: listOfFrames[0])
        view1.backgroundColor = Constants.backgroundColor
        view1.tag = Constants.tagKey
        
        let view2 = UIView(frame: listOfFrames[1])
        view2.backgroundColor = Constants.backgroundColor
        view2.tag = Constants.tagKey
        
        let view3 = UIView(frame: listOfFrames[2])
        view3.backgroundColor = Constants.backgroundColor
        view3.tag = Constants.tagKey
        
        let view4 = UIView(frame: listOfFrames[3])
        view4.backgroundColor = Constants.backgroundColor
        view4.tag = Constants.tagKey
        
        let view5 = UIView(frame: listOfFrames[4])
        view5.backgroundColor = Constants.backgroundColor
        view5.tag = Constants.tagKey
        
        view1.layer.cornerRadius = view1.frame.width/2
        view2.layer.cornerRadius = view2.frame.width/2
        view3.layer.cornerRadius = view3.frame.width/2
        view4.layer.cornerRadius = view4.frame.width/2
        view5.layer.cornerRadius = view5.frame.width/2
        
        self.addSubview(view1)
        self.addSubview(view2)
        self.addSubview(view3)
        self.addSubview(view4)
        self.addSubview(view5)
        
        view1.center.x = self.frame.maxX
        view2.center.x = self.frame.maxX
        view3.center.x = self.frame.maxX
        view4.center.x = self.frame.maxX
        view5.center.x = self.frame.maxX
        
        view1.center.y = self.frame.midY
        view2.center.y = self.frame.midY
        view3.center.y = self.frame.midY
        view4.center.y = self.frame.midY
        view5.center.y = self.frame.midY
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//function to animate the views using the tag
func animateBackground(view: CustomView) {
    UIView.animate(withDuration: 3, delay: 0.2, options: [.repeat, .autoreverse], animations: {
        for subview in view.subviews {
            if subview.tag == -3 {
                subview.transform = Constants.transform
            }
        }
    })
}
