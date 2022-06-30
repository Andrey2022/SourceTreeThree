//
//  FriendTableViewCell.swift
//  CourseSecondLessonOne
//
//  Created by user on 18/06/2022.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    @IBOutlet var cellLabelNameFriend: UILabel!
    @IBOutlet var cellLabelAgeFriend: UILabel!
    @IBOutlet var cellLabelDateBirthday: UILabel!
    
    func configurate(name: String, age: String, dateBirthday: String){
        cellLabelNameFriend.text = name
        cellLabelAgeFriend.text = age
        cellLabelDateBirthday.text = dateBirthday
    }
}
