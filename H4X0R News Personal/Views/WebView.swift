//
//  WebView.swift
//  H4X0R News Personal
//
//  Created by Akash Arafat on 2023/10/20.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {
    
    let urlSring: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
            if let safeString = urlSring {
                if let url = URL(string: safeString) {
                    let request = URLRequest(url: url)
                    uiView.load(request)
                }
            }
        }
}
