//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by HaseokJang on 2023/01/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    let quotes = [
        Quote(contents: "명언1 명언명언 명언명언 명언명언 명언명언 명언명언 명언명언", name: "사람1"),
        Quote(contents: "명언2 명언명언 명언명언 명언명언 명언명언 명언명언 명언명언", name: "사람2"),
        Quote(contents: "명언3 명언명언 명언명언 명언명언 명언명언 명언명언 명언명언", name: "사람3"),
        Quote(contents: "명언4 명언명언 명언명언 명언명언 명언명언 명언명언 명언명언", name: "사람4"),
        Quote(contents: "명언5 명언명언 명언명언 명언명언 명언명언 명언명언 명언명언", name: "사람5")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5)) // 0~4 사이 난수
        let quote = quotes[random]
        
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

