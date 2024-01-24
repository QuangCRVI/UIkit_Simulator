//
//  WebVC.swift
//  Lesson4
//
//  Created by Quang Nguyen on 24/01/2024.
//

import UIKit
import WebKit

class WebVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupWebView()
    }
    
    func setupWebView() {
        if let url = URL(string: "https://www.google.com.vn/?hl=vi") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
        webView.uiDelegate = self
        webView.navigationDelegate = self
    }
}

extension WebVC: WKUIDelegate, WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Web load successful")
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
}
