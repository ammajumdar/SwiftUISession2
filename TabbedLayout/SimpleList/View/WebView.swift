//
//  WebView.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 15/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
   
    let request: URLRequest
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView(frame: .init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 300))
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

#if DEBUG
struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "https://www.apple.com")!))
    }
}
#endif
