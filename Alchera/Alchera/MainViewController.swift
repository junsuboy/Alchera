//
//  ViewController.swift
//  Alchera
//
//  Created by ts3 on 2023/10/13.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    let animationView = LottieAnimationView(name: "alchera")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        animationView.frame = CGRect(x: 0, y: 0, width: 600, height: 600)
        animationView.center = view.center
        animationView.contentMode = .scaleAspectFit
        
        view.addSubview(animationView)
        
        animationView.play { finish in
            self.animationView.removeFromSuperview()
        }
    }
}
