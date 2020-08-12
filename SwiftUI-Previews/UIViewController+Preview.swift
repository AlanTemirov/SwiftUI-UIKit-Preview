//
//  UIViewController+Preview.swift
//  SwiftUI-Previews
//
//  Created by Alan on 12.08.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

#if DEBUG
import SwiftUI

/// Extends the UIViewController class by adding methods to preview (self) by using `SwiftUI` framework.
@available(iOS 13, *)
extension UIViewController {
    
    /// Preview current view controller (self).
    func toPreview() -> some View {
        Preview(currentViewController: self)
    }
    
}

// MARK: - Private
private extension UIViewController {
    
    struct Preview: UIViewControllerRepresentable {
        
        /// Current view controller to inject.
        let currentViewController: UIViewController
        
        func makeUIViewController(context: Context) -> UIViewController {
            currentViewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
    }
    
}
#endif

