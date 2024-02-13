//
//  WebView.swift
//  H4CXR NEWS
//
//  Created by Tejash Singh on 10/02/24.
//

import Foundation
import WebKit
import SwiftUI


struct WebView:UIViewRepresentable{
    
    var url:String
    
    let webView : WKWebView
    
    init(url:String){
        webView=WKWebView(frame: .zero)
        self.url=url
    }
    
    func makeUIView(context: Context) -> some UIView {
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        webView.load(URLRequest(url: URL(string: url)!))
    }
    
    
}
