//
//  ViewController.swift
//  carryme2023HW
//
//  Created by Kyunghyun Lee on 2023/01/17.
//


import UIKit

private let cellID = "Cell"
class ViewController: UIViewController, UITableViewDelegate {
    
    //MARK: - Properties
    
    let tableView = UITableView()
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureUI()
        
    }
    
    
    // MARK: - Helpers
    
    func configureUI() {
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MyPageCell.self, forCellReuseIdentifier: cellID)
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
    }
    
}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MyPageCell
        
        cell.backgroundColor = .red
        
        return cell
        
    }
    
}

extension ViewController: UITableViewDelegate {
    header
    
}

    



    

