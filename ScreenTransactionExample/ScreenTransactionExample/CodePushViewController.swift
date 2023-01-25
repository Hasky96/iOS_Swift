//
//  CodePushViewController.swift
//  screenTransactionExample
//
//  Created by HaseokJang on 2023/01/26.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func tapBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
