//
//  SettingsVCTV.swift
//  CourseSecondLessonOne
//
//  Created by user on 18/06/2022.
//

import UIKit

class SettingsVCTV: UIViewController {
    
    // установить геттер и сеттер в классе? для расчета возраста
    var dataFriends = [
        Friend(name: "Marshal", image: UIImage(named: "Marshal"), age: "11", birthday: "10.11.2011"),
        Friend(name: "Gonchik", image: UIImage(named: "Gonchik"), age: "9", birthday: "10.11.2013"),
        Friend(name: "Rokki", image: UIImage(named: "Rokki"), age: "10", birthday: "10.11.2012"),
        Friend(name: "Zuma", image: UIImage(named: "Zuma"), age: "7", birthday: "10.11.2015")
    ]

    @IBOutlet var outletTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.outletTableView.register(UINib(nibName: "FriendCell", bundle: nil), forCellReuseIdentifier: Constants.Cell.friendCell)
    }
}

extension SettingsVCTV: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataFriends.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: Constants.Cell.friendCell, for: indexPath)
    }
}

extension SettingsVCTV: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        (cell as? FriendTableViewCell)?.configurate(
            name: dataFriends[indexPath.row].name,
            imageFriendString: dataFriends[indexPath.row].image!,
            age: dataFriends[indexPath.row].age,
            dateBirthday: dataFriends[indexPath.row].birthday
        )
    }

    
    private func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath){
        print(indexPath.row)
    }
}

