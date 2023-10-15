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
    let cameraView = UIView()
    let cameraIcon = UIImageView(image: UIImage(named: "ic-camera"))
    let cameraLabel = UILabel()
    let chatGPTView = UIView()
    let chatGPTIcon = UIImageView(image: UIImage(named: "ic-chatgpt"))
    let chatGPTLabel = UILabel()
    let organizationView = UIView()
    let organizationIcon = UIImageView(image: UIImage(named: "ic-organization"))
    let organizationLabel = UILabel()
    let alcheraWebView = UIView()
    let alcheraWebIcon = UIImageView(image: UIImage(named: "ic-web"))
    let alcheraWebLabel = UILabel()
    let undefinedView = UIView()
    let undefinedIcon = UIImageView(image: UIImage(named: "ic-question"))
    let undefinedLabel = UILabel()
    let bottomView = UIView()
    let companyLabel = UILabel()
    let sloganLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .black
        
        let views = [topView, swiftLottieView, cameraView, chatGPTView, organizationView, alcheraWebView, undefinedView, bottomView, companyLabel, sloganLabel, cameraIcon, cameraLabel, chatGPTIcon, chatGPTLabel, organizationIcon, organizationLabel, alcheraWebIcon, alcheraWebLabel, undefinedIcon, undefinedLabel]
        views.forEach {
            view.addSubview($0)
        }
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(navigate(sender:)))
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(navigate(sender:)))
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(navigate(sender:)))
        let tapGesture4 = UITapGestureRecognizer(target: self, action: #selector(navigate(sender:)))
        let tapGesture5 = UITapGestureRecognizer(target: self, action: #selector(navigate(sender:)))
        cameraView.addGestureRecognizer(tapGesture1)
        chatGPTView.addGestureRecognizer(tapGesture2)
        organizationView.addGestureRecognizer(tapGesture3)
        alcheraWebView.addGestureRecognizer(tapGesture4)
        undefinedView.addGestureRecognizer(tapGesture5)
        
        setUI()
    }
}

extension MainViewController {
    func setUI() {
        topView.backgroundColor = .darkGray
        bottomView.backgroundColor = .darkGray
        cameraView.backgroundColor = .blue
        cameraView.layer.cornerRadius = 10
        cameraLabel.text = "Camera"
        cameraLabel.font = .boldSystemFont(ofSize: 16)
        chatGPTView.backgroundColor = .blue
        chatGPTView.layer.cornerRadius = 10
        chatGPTLabel.text = "ChatGPT"
        chatGPTLabel.font = .boldSystemFont(ofSize: 16)
        organizationView.backgroundColor = .blue
        organizationView.layer.cornerRadius = 10
        organizationLabel.text = "ChatGPT"
        organizationLabel.font = .boldSystemFont(ofSize: 16)
        alcheraWebView.backgroundColor = .blue
        alcheraWebView.layer.cornerRadius = 10
        alcheraWebLabel.text = "Web"
        alcheraWebLabel.font = .boldSystemFont(ofSize: 16)
        undefinedView.backgroundColor = .blue
        undefinedView.layer.cornerRadius = 10
        undefinedLabel.text = "Undefined"
        undefinedLabel.font = .boldSystemFont(ofSize: 16)
        companyLabel.text = "Alchera"
        companyLabel.font = .boldSystemFont(ofSize: 16)
        sloganLabel.text = "Make your AI dreams a reality"
        sloganLabel.font = .systemFont(ofSize: 14)
        
        topView.snp.makeConstraints {
            $0.height.equalTo(170)
            $0.top.leading.trailing.equalToSuperview()
        }
        
        swiftLottieView.snp.makeConstraints {
            $0.height.equalTo(100)
            $0.top.equalTo(topView).offset(50)
            $0.leading.trailing.equalToSuperview()
            $0.centerX.equalToSuperview()
        }
        
        cameraView.snp.makeConstraints {
            $0.height.equalTo(150)
            $0.top.equalTo(topView.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(30)
        }
        cameraIcon.snp.makeConstraints {
            $0.width.height.equalTo(40)
            $0.trailing.equalTo(cameraView.snp.centerX).offset(-30)
            $0.centerY.equalTo(cameraView.snp.centerY)
        }
        cameraLabel.snp.makeConstraints {
            $0.leading.equalTo(cameraView.snp.centerX).offset(-20)
            $0.centerY.equalTo(cameraView.snp.centerY)
        }
        
        chatGPTView.snp.makeConstraints {
            $0.height.equalTo(240)
            $0.top.equalTo(cameraView.snp.bottom).offset(10)
            $0.leading.equalTo(cameraView.snp.leading)
            $0.trailing.equalTo(topView.snp.centerX).offset(-5)
        }
        chatGPTIcon.snp.makeConstraints {
            $0.width.height.equalTo(40)
            $0.trailing.equalTo(chatGPTView.snp.centerX).offset(-30)
            $0.centerY.equalTo(chatGPTView.snp.centerY)
        }
        chatGPTLabel.snp.makeConstraints {
            $0.leading.equalTo(chatGPTView.snp.centerX).offset(-20)
            $0.centerY.equalTo(chatGPTView.snp.centerY)
        }
        
        organizationView.snp.makeConstraints {
            $0.height.equalTo(170)
            $0.top.equalTo(cameraView.snp.bottom).offset(10)
            $0.leading.equalTo(topView.snp.centerX).offset(5)
            $0.trailing.equalTo(cameraView.snp.trailing)
        }
        organizationIcon.snp.makeConstraints {
            $0.width.height.equalTo(40)
            $0.trailing.equalTo(organizationView.snp.centerX).offset(-30)
            $0.centerY.equalTo(organizationView.snp.centerY)
        }
        organizationLabel.snp.makeConstraints {
            $0.leading.equalTo(organizationView.snp.centerX).offset(-20)
            $0.centerY.equalTo(organizationView.snp.centerY)
        }
        
        alcheraWebView.snp.makeConstraints {
            $0.height.equalTo(170)
            $0.top.equalTo(chatGPTView.snp.bottom).offset(10)
            $0.leading.trailing.equalTo(chatGPTView)
        }
        alcheraWebIcon.snp.makeConstraints {
            $0.width.height.equalTo(40)
            $0.trailing.equalTo(alcheraWebView.snp.centerX).offset(-30)
            $0.centerY.equalTo(alcheraWebView.snp.centerY)
        }
        alcheraWebLabel.snp.makeConstraints {
            $0.leading.equalTo(alcheraWebView.snp.centerX).offset(-20)
            $0.centerY.equalTo(alcheraWebView.snp.centerY)
        }
        
        undefinedView.snp.makeConstraints {
            $0.height.equalTo(240)
            $0.top.equalTo(organizationView.snp.bottom).offset(10)
            $0.leading.trailing.equalTo(organizationView)
        }
        undefinedIcon.snp.makeConstraints {
            $0.width.height.equalTo(40)
            $0.trailing.equalTo(undefinedView.snp.centerX).offset(-30)
            $0.centerY.equalTo(undefinedView.snp.centerY)
        }
        undefinedLabel.snp.makeConstraints {
            $0.leading.equalTo(undefinedView.snp.centerX).offset(-20)
            $0.centerY.equalTo(undefinedView.snp.centerY)
        }
        
        bottomView.snp.makeConstraints {
            $0.top.equalTo(undefinedView.snp.bottom).offset(20)
            $0.leading.trailing.bottom.equalToSuperview()
        }
        
        companyLabel.snp.makeConstraints {
            $0.top.equalTo(bottomView.snp.top).offset(20)
            $0.centerX.equalTo(bottomView.snp.centerX)
        }
        sloganLabel.snp.makeConstraints {
            $0.top.equalTo(companyLabel.snp.bottom).offset(6)
            $0.centerX.equalTo(bottomView.snp.centerX)
        }
        
        swiftLottieView.loopMode = .loop
        swiftLottieView.play()
    }
    
    @objc
    func navigate(sender: UITapGestureRecognizer) {
        let view = sender.view
        let loc = sender.location(in: view)
        let subview = view?.hitTest(loc, with: nil)
        
        if subview == cameraView {
            print("cameraView")
        } else if subview == chatGPTView {
            print("chatGPTView")
        } else if subview == organizationView {
            print("organizationView")
        } else if subview == alcheraWebView {
            print("alcheraWebView")
        } else if subview == undefinedView {
            print("undefinedView")
        }
    }
}
