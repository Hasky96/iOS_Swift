//
//  seguePresentViewController.swift
//  screenTransactionExample
//
//  Created by HaseokJang on 2023/01/26.
//

import UIKit

class seguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapBack(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
