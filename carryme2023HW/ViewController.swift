//
//  ViewController.swift
//  carryme2023HW
//
//  Created by Kyunghyun Lee on 2023/01/17.
//

import UIKit

class ViewController: UIViewController {
    
    
 //유저상세
    @IBOutlet weak var userProfileImage: UIImageView!
    
    @IBOutlet weak var userId: UILabel!
    
    @IBOutlet weak var userTotalRatings: UILabel!
    
 //캐리목록. 유저가 등록한 캐리상품 리스트
    //캐리상품에서 보여주는 정보들은 아래와 같음.
    
    //캐리게임 사진
    @IBOutlet weak var carryGameImage: UIImageView!
    //캐리게임 이름
    @IBOutlet weak var carryGameName: UILabel!
    //캐리게임 제목
    @IBOutlet weak var carryGameTiltle: UILabel!
    //본 캐리게임 후기 개수에 의한 등급(1등급: 50개 이하,2등급: 51-100개, 3등급:101-200개)
    @IBOutlet weak var carryGameLevel: UILabel!
    //본 캐리게임 후기 개수
    @IBOutlet weak var carryGameRating: UILabel!
    //본 캐리상품 이용 수수료
    @IBOutlet weak var carryGameFee: UILabel!
    
 //추천유저목록.본 유저 외 동일게임 캐리상품을 등록한 유저 리스트.
    //추천유저목록에서 보여주는 정보들은 아래와 같음.
    
    //다른 유저프사
    @IBOutlet weak var otherUserProfileImage: UIImageView!
    
    //다른 유저 캐리게임 후기 개수에 의한 등급(1등급: 50개 이하,2등급: 51-100개, 3등급:101-200개)
    @IBOutlet weak var otherUserCarryGameLevel: UILabel!
    
    //다른 유저 캐리게임 후기 개수
    @IBOutlet weak var otherUserCarryGameRating: UILabel!
    
    //다른 유저 캐리상품 이용 수수료
    @IBOutlet weak var otherUserCarryGameFee: UILabel!
    
    //다른 유저 캐리게임 제목
    @IBOutlet weak var otherUserCarryGameTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

