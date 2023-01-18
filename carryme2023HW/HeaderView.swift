//
//  HeaderView.swift
//  carryme2023HW
//
//  Created by Kyunghyun Lee on 2023/01/18.
//

import UIKit

class HeaderView: UIView {

    
    // MARK: - Property
    
    let userProfileImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "person.fill")
        iv.contentMode = .scaleToFill
        return iv
    }()
    
    // MARK: - Lifecycle
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        
        configureUI()
        
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
        
    }

}
