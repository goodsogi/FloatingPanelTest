//
//  ViewController.swift
//  FloatingPanelTest
//
//  Created by Jeonggyu Park on 06/08/2020.
//  Copyright © 2020 Jeonggyu Park. All rights reserved.
//

import UIKit
import FloatingPanel

class ViewController: UIViewController, FloatingPanelControllerDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Initialize a `FloatingPanelController` object.
   
        let fpc = FloatingPanelController()
        
        fpc.delegate = self
        
        guard let contentVC = storyboard?.instantiateViewController(identifier: "fpc_content") as? ContentViewController else {
            return
        }
        
        fpc.set(contentViewController: contentVC)
        //fpc_content
        
        fpc.addPanel(toParent: self)
    }


}


