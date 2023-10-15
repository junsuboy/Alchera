//
//  AlcheraWebView.swift
//  Alchera
//
//  Created by Junsu Jang on 10/15/23.
//

import Foundation
import UIKit
import WebKit
import SnapKit

class AlcheraWebView: UIViewController {
    private var webView = WKWebView()
    
    override func viewDidLoad() {
        view.addSubview(webView)
        
        webView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.trailing.bottom.equalToSuperview()
        }
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationItem.title = "AlcheraWeb"
        
        if let url = URL(string: "https://alchera.ai") {
            let request = URLRequest(url: url)
            webView.load(request)
        }

        super.viewDidLoad()
    }
}
