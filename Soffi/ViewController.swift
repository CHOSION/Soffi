//
//  ViewController.swift
//  Soffi
//
//  Created by 조세연 on 2021/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    let quotes = [
        Quote(contents: "강한 자가 이기는 것이 아니라, 이기는 자가 강한 것이다.", name: "프란츠 베켄바워"),
        Quote(contents: "뛰어난 킥은 하루만에 만들어지지 않는다. 수천 수만 번의 노력으로 탄생하는 것이다.", name: "데이비드 베컴"),
        Quote(contents: "힘든가? 오늘 쉬면 내일은 뛰어야 한다.", name: "카를레스 푸욜"),
        Quote(contents: "미친 사람이 이성적인 사람보다 세상을 많이 변화시킨다.", name: "에릭 칸토나"),
        Quote(contents: "무언가를 바꾸기 위해서는 나 자신부터 바뀌어야 한다", name: "펩 과르디올라")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5)) // 0~4사이의 난수를 생성
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

