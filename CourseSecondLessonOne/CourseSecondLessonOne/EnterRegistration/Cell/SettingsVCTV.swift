//
//  SettingsVCTV.swift
//  CourseSecondLessonOne
//
//  Created by user on 18/06/2022.
//

import UIKit

class SettingsVCTV: UIViewController {
    
    
    var dataFriendsA = ["Anya", "13", "18.10.2000"]

    @IBOutlet var outletTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.outletTableView.register(UINib(nibName: "FriendCell", bundle: nil), forCellReuseIdentifier: Constants.Cell.freindCell)
    }
}

extension SettingsVCTV: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataFriendsA.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: Constants.Cell.freindCell, for: indexPath)
    }
}

extension SettingsVCTV: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        (cell as? FriendTableViewCell)?.configurate(name: dataFriendsA[0], age: dataFriendsA[1], dateBirthday: dataFriendsA[2])
    }
    
    private func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath){
        print(indexPath.row)
    }
}

