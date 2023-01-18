//
//  HeaderView.swift
//  carryme2023HW
//
//  Created by Kyunghyun Lee on 2023/01/18.
//

import UIKit

class HeaderView: UIView {

    
    // MARK: - Property
    
    var userLabel: UILabel {
        let ul = UILabel()
        ul.translatesAutoresizingMaskIntoConstraints = false
        ul.numberOfLines = 1
        ul.font = UIFont.preferredFont(forTextStyle: .title3)
        ul.textAlignment = .center
        ul.text = "유저상세"
        return ul
    }
    
    
    let userProfileImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "person.fill")
        iv.contentMode = .scaleToFill
        iv.backgroundColor = .lightGray
        iv.layer.cornerRadius = 120 / 2
        iv.clipsToBounds = true 
        return iv
    }()
    
    // MARK: - Lifecycle
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        
        configureUI()
        layout()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(color:) has not been implemented")
    }
    // MARK: - Helpers
    
    func configureUI() {
        
        addSubview(userProfileImage)
        userProfileImage.translatesAutoresizingMaskIntoConstraints = false
        
        userProfileImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        userProfileImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        userProfileImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        userProfileImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        
        addSubview(userLabel)
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        
        userLabel.numberOfLines = 1
        userLabel.font = UIFont.preferredFont(forTextStyle: .title3)
        userLabel.textAlignment = .center
        userLabel.text = "유저상세"
        
    }
        
    private func layout() {

            // [userLabel] 기본 상부 배치
        //NSLayoutConstraint.activate([
       // userLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
       // userLabel.topAnchor.constraint(equalTo: topAnchor)
             
         //   ])
        }
        
        
    }

