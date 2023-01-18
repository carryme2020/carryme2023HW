//
//  ViewController.swift
//  carryme2023HW
//
//  Created by Kyunghyun Lee on 2023/01/17.
//


import UIKit

private let cellID = "Cell"



class ViewController: UIViewController {
    
    //MARK: - Properties
    
    let userLabel = UILabel()
    
    let tableView = UITableView(frame: .zero, style: .grouped) //header scroll-down drag together with tableView
    
    let myPageMenu = [""]
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        configureUI()
        style()
        layout()
    }
    
    
    // MARK: - Helpers
    
    func configureUI() {
        view.addSubview(tableView)
        
        tableView.backgroundColor = .white
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MyPageCell.self, forCellReuseIdentifier: cellID)
        
        
       // tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
       // tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
       // tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
       // tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        //to make above simple
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor)
        
        ])
        
    }

}



extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MyPageCell
        
        cell.backgroundColor = .lightGray
        
        return cell
        
    }
    
}

extension ViewController: UITableViewDelegate {
    
 

    private func style() {
        // [view]
        view.backgroundColor = .systemBackground
        
        // [Label]
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        userLabel.numberOfLines = 1
        userLabel.font = UIFont.preferredFont(forTextStyle: .title3)
        userLabel.textAlignment = .center
        userLabel.text = "유저상세"
        
        view.addSubview(userLabel)
        
    }
    
    private func layout() {

        // [userLabel] 기본 상부 배치
        NSLayoutConstraint.activate([
            userLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userLabel.topAnchor.constraint(equalTo: view.topAnchor)
         
        ])
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = HeaderView()
        
        header.backgroundColor = .white
        
        return header
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    
    
    
    
}
