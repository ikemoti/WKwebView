//
//  ViewController.swift
//  WKwebView
//
//  Created by USER on 2020/01/20.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

//初期化
    var webview = WKWebView()
    @IBOutlet weak var toolbar: UIToolbar!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
      //大きさ
        webview.frame = CGRect(
            x: 0,
            y:toolbar.frame.size.height,
            width: view.frame.size.width,
            height:view.frame.size.height -
                toolbar.frame.size.height*2)
       //view追加
        view.addSubview(webview)
        
        
        webview.navigationDelegate = self
    //sstring型をURL型にキャスト
        let url = URL(string:"https://www.google.com/webhp?hl=ja&sa=X&ved=0ahUKEwiGw6TQ85HnAhUuyYsBHdQtAQsQPAgH")
        
        let request  = URLRequest(url: url!)
        
        webview.load(request)
        }
    //ロードが開始された時
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("ロード完了")
        
        indicator.stopAnimating()
    }
    
    
    
    
    
    
    
    
    @IBAction func go(_ sender: Any) {
        webview.goForward()
    }
    
    @IBAction func back(_ sender: Any) {
        webview.goBack()
    }
}

