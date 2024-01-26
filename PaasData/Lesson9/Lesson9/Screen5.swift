//
//  Screen5.swift
//  Lesson9
//
//  Created by Quang Nguyen on 26/01/2024.
//

import UIKit

class User {
    var name = ""
    var age = ""
    
    init(name: String = "", age: String = "") {
        self.name = name
        self.age = age
    }
}

var arr = [User]()

class Screen5: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
        fakeData()
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        //Xoá Line thừa
        tableView.tableFooterView = UIView()
        
        let nib = UINib(nibName: "UserCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "userCell")
    }
    
    func fakeData() {
        let u1 = User(name: "iOS", age: "30")
        let u2 = User(name: "C#", age: "30")
        let u3 = User(name: "C", age: "30")
        let u4 = User(name: "C++", age: "30")
        let u5 = User(name: "Obj-C", age: "30")
        
        arr.append(u1)
        arr.append(u2)
        arr.append(u3)
        arr.append(u4)
        arr.append(u5)
        tableView.reloadData()
    }
    
    @IBAction func tapOnAddNewUser(_ sender: Any) {
        let vc = AddNewUserVC(nibName: "AddNewUserVC", bundle: nil)
        // Step 4
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
}

// Step 5
extension Screen5: AddNewUserDelegate {
    func addNewUser(user: User) {
        arr.append(user)
        tableView.reloadData()
    }
}

extension UIViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as! UserCell
        let user = arr[indexPath.row]
        cell.lbName.text = user.name
        cell.lbAge.text = user.age
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
}
