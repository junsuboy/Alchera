//
//  SplashViewController.swift
//  Alchera
//
//  Created by ts3 on 2023/10/13.
//

import UIKit
import Lottie

class SplashViewController: UIViewController {
    let splashView = LottieAnimationView(name: "alchera")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        splashView.frame = CGRect(x: 0, y: 0, width: 600, height: 600)
        splashView.center = view.center
        splashView.contentMode = .scaleAspectFit
        
        view.addSubview(splashView)
        
        splashView.play { finish in
            self.splashView.removeFromSuperview()
            
            self.navigationController?.pushViewController(MainViewController(), animated: false)
        }
    }
}
