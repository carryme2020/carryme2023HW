//
//  userLabel.swift
//  carryme2023HW
//
//  Created by Kyunghyun Lee on 2023/01/18.
//

import UIKit

class userLabel: UILabel {
    
    let userLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        style()
        layout()
    }
    
}
    //MARK: - Style & Layouts
    extension ViewController {

      private func setup() {
          // 초기 셋업할 코드들
      }

      private func style() {
          // [view]
          view.backgroundColor = .systemBackground

          // [Label]
          userLabel.translatesAutoresizingMaskIntoConstraints = false
          userLabel.numberOfLines = 1
          userLabel.font = UIFont.preferredFont(forTextStyle: .title1)
          userLabel.textAlignment = .center
          userLabel.text = "유저상세"
          
          view.addSubview(label)


      }

      private func layout() {

          // [label] 기본 중앙 배치
          NSLayoutConstraint.activate([
              label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
          ])
      }
    }
