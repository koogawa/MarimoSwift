//
//  ViewController.swift
//  MarimoSwift
//
//  Created by koogawa on 2014/06/04.
//  Copyright (c) 2014年 Kosuke Ogawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var marimoView : UIImageView
    var animator : UIDynamicAnimator = UIDynamicAnimator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var animator = UIDynamicAnimator(referenceView:self.view)
        self.marimoView.image = UIImage(named:"marimo")
        var gravityBehavior = UIGravityBehavior(items:[self.marimoView])
        var collisionBehavior = UICollisionBehavior(items:[self.marimoView])
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true;
        animator.addBehavior(gravityBehavior)
        animator.addBehavior(collisionBehavior)
        self.animator = animator;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

