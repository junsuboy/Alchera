//
//  MainViewController.swift
//  Alchera
//
//  Created by Junsu Jang on 10/13/23.
//

import Lottie
import SnapKit
import UIKit

class MainViewController: UIViewController {
    let swiftLottieView = LottieAnimationView(name: "spinswift")
    let topView = UIView()
    let bottomView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        view.addSubview(swiftLottieView)
        view.addSubview(topView)
        view.addSubview(bottomView)
        
        setUI()
    }
}

extension MainViewController {
    func setUI() {
        swiftLottieView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.centerX.equalToSuperview()
        }
        swiftLottieView.loopMode = .loop
        swiftLottieView.play()
    }
}
