//
//  webUrlView.swift
//  H4CXR NEWS
//
//  Created by Tejash Singh on 10/02/24.
//

import SwiftUI

struct webUrlView: View {
    
    var url:String;
    
    var body: some View {
//        Text("Hello, World!")
        WebView(url:url)
    }
}

#Preview {
    webUrlView(url:"https://www.google.com")
}


