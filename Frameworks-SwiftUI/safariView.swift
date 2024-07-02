//
//  safariView.swift
//  Frameworks-SwiftUI
//
//  Created by Gulam Ali on 02/07/24.
//

import Foundation
import SwiftUI
import SafariServices

struct safariView: UIViewControllerRepresentable {
    
    let url : URL

    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
    
}
