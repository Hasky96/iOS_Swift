//
//  SeguePushViewController.swift
//  screenTransactionExample
//
//  Created by HaseokJang on 2023/01/25.
//

import UIKit

class SeguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func tapBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        //self.navigationController?.popToRootViewController(animated: true)
    }
}
