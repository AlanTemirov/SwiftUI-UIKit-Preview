//
//  ViewController.swift
//  SwiftUI-Previews
//
//  Created by Alan on 12.08.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var previewLabel: UILabel!
    @IBOutlet weak var previewView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        previewView.backgroundColor = .red
        previewLabel.textColor = .green
    }
    
}


#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ViewControllerPreview: PreviewProvider {
    
    static var previews: some View {
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController").toPreview()
    }
}
#endif
